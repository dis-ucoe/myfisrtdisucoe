from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate, login, logout
from .models import StudentRel,TeacherRel,HodRel,Student,Teacher,Marks,Subject,Batch,Attendance,CoverNews,TeacherNews,TeacherEvents,StudentEvents,Pubs,Rguide
from django.utils import timezone
import datetime,os
from django.http import HttpResponse
from random import randint


###################################################################################################################
'''    $$$$$$$$$$$$    AUTHENTICATION        DEFINITIONS   $$$$$$$$$$$       '''
###################################################################################################################
def get_or_none(classmodel, **kwargs):
    try:
        return classmodel.objects.get(**kwargs)
    except classmodel.DoesNotExist:
        return None

def cover(request):
	if  request.user.is_authenticated():
		return home(request)
	else:
		c_news=CoverNews.objects.all()
		return render(request, 'ucoe/Home.html',{'c_news':c_news})

def home(request):
	user=request.user
	alist=[]
	if user.is_authenticated():
		if get_or_none(HodRel,user=user) is not None:
			hod = HodRel.objects.filter(user=user)[0]
			t_news = TeacherNews.objects.all()
			t_events = TeacherEvents.objects.all()
			return render(request, 'ucoe/Hodhome.html',{'hod':hod,'t_news':t_news,'t_events':t_events})
		elif get_or_none(TeacherRel,user=user) is not None:
			teacher = TeacherRel.objects.filter(user=user)[0]
			t_news = TeacherNews.objects.all()
			t_events = TeacherEvents.objects.all()
			return render(request, 'ucoe/Teacherhome.html',{'teacher':teacher,'t_news':t_news,'t_events':t_events})
		elif get_or_none(StudentRel,user=user) is not None:
			s_events = StudentEvents.objects.all()
			student = StudentRel.objects.filter(user=user)[0]
		        marks=Marks.objects.filter(student=student.student)
			for mark in marks:	
				if mark.flag is True:
					alist.append("marks of " + mark.subject.subject + " uploaded")	
			return render(request, 'ucoe/Studenthome.html',{'student':student,'alist':alist,'s_events':s_events})
		else:
			return render(request, 'ucoe/Login.html',{})
	else:
		return render(request, 'ucoe/Login.html',{})

def auth(request):
	if request.POST:
		username = request.POST.get('username')
		password = request.POST.get('password')
		user = authenticate(username=username,password=password)
		if user is not None:
			if user.is_active:
				login(request,user)
				return redirect(home)
			else:
				return home(request)
		else:
			return home(request)
	else:
		return home(request)

def log_out(request):
	if request.user.is_authenticated():
		logout(request)
		return home(request)
	else:
		return home(request)


'''      $$$$$$$$$  TEACHER       DEFINITIONS  $$$$$$$$$      '''

def tmarks(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = TeacherRel.objects.filter(user=user)[0]
			batches = Subject.objects.filter(teacher=teacher.teacher)
			return render(request, 'ucoe/TMarks.html',{'teacher':teacher,'batches':batches})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)


def view_tmarks(request,pk):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user)
			batch=get_or_none(Batch,pk=pk)
			batches = Subject.objects.filter(teacher=teacher.teacher)
			if batch is not None:
				students = Student.objects.filter(batch=batch)
				subject = Subject.objects.filter(batch=batch).filter(teacher=teacher.teacher)
				marks = Marks.objects.filter(subject=subject)
				if len(students)==len(marks):
					table=zip(marks,students)
					students = None
					return render(request, 'ucoe/TMarks.html',{'teacher':teacher,'students':students,'table':table,'batches':batches,'batch':batch})
				else:
					return render(request, 'ucoe/TMarks.html',{'teacher':teacher,'students':students,'batches':batches,'batch':batch})
					
			else:
				return render(request, 'ucoe/TMarks.html',{'teacher':teacher,'batches':batches,'batch':batch})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)


def save_tmarks(request):
	user = request.user
	if request.POST:
		if user.is_authenticated():
			if get_or_none(TeacherRel,user=user) is not None:
				pk=request.POST.get('batch')
				teacher = get_or_none(TeacherRel,user=user)
				batch=get_or_none(Batch,pk=pk)
				students = Student.objects.filter(batch=batch)
				subject = Subject.objects.filter(batch=batch).filter(teacher=teacher.teacher)[0]
				for student in students:
					mst1 = request.POST.get(str(student.roll_no) + '_1')
					mst2 = request.POST.get(str(student.roll_no) + '_2')
					attend = request.POST.get(str(student.roll_no) + '_3')
					assessment = request.POST.get(str(student.roll_no) + '_4')
					sports = request.POST.get(str(student.roll_no) + '_5')
					if len(mst1)>0:
						mst1=mst1
					else:
						mst1='0'
					if len(mst2)>0:
						mst2=mst2
					else:
						mst2='0'
					if len(attend)>0:
						attend=attend
					else:
						attend='0'
					if len(assessment)>0:
						assessment=assessment
					else:
						assessment='0'
					if len(sports)>0:
						sports=sports
					else:
						sports='0'
					if len(Marks.objects.filter(student=student).filter(subject=subject))>0:
						num=Marks.objects.filter(student=student).filter(subject=subject)[0]
						num.mst1=int(mst1)
						num.mst2=int(mst2)
						num.assessment=int(assessment)
						num.att=int(attend)
						num.sports=int(sports)
						num.flag=True
						num.save(force_update=True)
					else:
						num=Marks(mst1=int(mst1),mst2=int(mst2),att=int(attend),sports=int(sports),assessment=int(assessment),student=student,subject=subject,flag=False)
						num.save(force_insert=True)
				batches = Subject.objects.filter(teacher=teacher.teacher)
				if batch is not None:
					marks = Marks.objects.filter(subject=subject)
					if len(students)==len(marks):
						table=zip(marks,students)
						students = None
						return render(request, 'ucoe/TMarks.html',{'teacher':teacher,'students':students,'table':table,'batches':batches,'batch':batch})
					else:
						return render(request, 'ucoe/TMarks.html',{'teacher':teacher,'students':students,'batches':batches,'batch':batch})
					
				else:
					return render(request, 'ucoe/TMarks.html',{'teacher':teacher,'batches':batches,'batch':batch})
			else :
				logout(request)
				return render(request, 'ucoe/Login.html',{})
		else:
			return home(request)

def tatt(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = TeacherRel.objects.filter(user=user)[0]
			batches = Subject.objects.filter(teacher=teacher.teacher)
			return render(request, 'ucoe/TAttendance.html',{'teacher':teacher,'batches':batches})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)

def view_tatt(request,pk):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user)
			batch=get_or_none(Batch,pk=pk)
			batches = Subject.objects.filter(teacher=teacher.teacher)
			if batch is not None:
				students = Student.objects.filter(batch=batch)
				date = timezone.now().date() 
				subject = Subject.objects.filter(batch=batch).filter(teacher=teacher.teacher)
				att = Attendance.objects.filter(subject=subject).filter(date=date)
				v_dates = Attendance.objects.filter(subject=subject).values_list('date',flat=True).distinct().order_by('date')
				v_att = []
				for student in students:
					temp = []
					abc=[]
					temp.append(student.roll_no)
					temp.append(student.name)
					temp_att = list(Attendance.objects.filter(subject=subject).filter(student=student).order_by('date'))
					i=0
					for t in temp_att:	
						if t.p_a == True:
							i = i+1
							abc.append(i)
						else:
							abc.append('x')
					temp.append(abc)
					v_att.append(temp)
				return render(request, 'ucoe/TAttendance.html',{'teacher':teacher,'batches':batches,'batch':batch,'students':students,'v_att':v_att,'v_dates':v_dates})
			else:
				return render(request, 'ucoe/TAttendance.html',{'teacher':teacher,'batches':batches,'batch':batch})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)


def save_tatt(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			pk=request.POST.get('batch')
			teacher = get_or_none(TeacherRel,user=user)
			batch=get_or_none(Batch,pk=pk)
			students = Student.objects.filter(batch=batch).order_by('roll_no')
			batches = Subject.objects.filter(teacher=teacher.teacher)
			if batch is not None:
				roll_nos=request.POST.getlist('checks')
				date=timezone.now().date()
				subject = Subject.objects.filter(batch=batch).filter(teacher=teacher.teacher)[0]
				attend=Attendance.objects.filter(subject=subject).filter(date=date)
				if len(attend) == 0:
					for student in students:
						if str(student.roll_no) in roll_nos:
							attendance = Attendance(student=student,subject=subject,p_a=True,date=date)
							attendance.save()
						else:
							attendance = Attendance(student=student,subject=subject,p_a=False,date=date)
							attendance.save()
				else:
					for student in students:
						if str(student.roll_no) in roll_nos:
							attendance = Attendance.objects.filter(student=student).filter(subject=subject).filter(date=date)[0]
							attendance.p_a=True
							attendance.save()
						else:
							attendance = Attendance.objects.filter(student=student).filter(subject=subject).filter(date=date)[0]
							attendance.p_a=False
							attendance.save()
				attendances = Attendance.objects.filter(subject=subject).filter(date=date)
				v_dates = Attendance.objects.filter(subject=subject).values_list('date',flat=True).distinct().order_by('date')
				v_att = []
				for student in students:
					temp = []
					abc = []
					temp.append(student.roll_no)
					temp.append(student.name)
					temp_att = list(Attendance.objects.filter(subject=subject).filter(student=student).order_by('date'))
					i=0
					for t in temp_att:	
						if t.p_a == True:
							i = i+1
							abc.append(i)
						else:
							abc.append('x')
					temp.append(abc)
					v_att.append(temp)
				return render(request, 'ucoe/TAttendance.html',{'teacher':teacher,'attendances':attendances,'batches':batches,'batch':batch,'students':students,'v_att':v_att,'v_dates':v_dates})
			else:
				return render(request, 'ucoe/TAttendance.html',{'teacher':teacher,'batches':batches,'batch':batch})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)


def dateview_tatt(request):
	user = request.user
	if request.POST:
		if user.is_authenticated():
			if get_or_none(TeacherRel,user=user) is not None:
				pk=request.POST.get('batch')
				teacher = get_or_none(TeacherRel,user=user)
				batch=get_or_none(Batch,pk=pk)
				batches = Subject.objects.filter(teacher=teacher.teacher)
				datestr=request.POST.get('date')
				date=datetime.datetime.strptime(datestr, '%d/%m/%Y').date()
				subject = Subject.objects.filter(teacher=teacher.teacher).filter(batch=batch)
				dv_att = Attendance.objects.filter(subject=subject).filter(date=date)
				tab='Edit' 
				return render(request, 'ucoe/TAttendance.html',{'teacher':teacher,'batches':batches,'datestr':datestr,'dv_att':dv_att,'batch':batch,'tab':tab})
			else :
				logout(request)
				return render(request, 'ucoe/Login.html',{})
		else:
			return home(request)
	else:
		return home(request)

def datesave_tatt(request):
	user = request.user
	if request.POST:
		if user.is_authenticated():
			if get_or_none(TeacherRel,user=user) is not None:
				pk=request.POST.get('batch')
				teacher = get_or_none(TeacherRel,user=user)
				batch=get_or_none(Batch,pk=pk)
				batches = Subject.objects.filter(teacher=teacher.teacher)
				roll_nos=request.POST.getlist('checks')
				students=[]
				for roll_no in roll_nos:
					students.append(Student.objects.filter(roll_no=roll_no)[0])
				datestr=request.POST.get('date')
				date=datetime.datetime.strptime(datestr, '%d/%m/%Y').date()
				subject = Subject.objects.filter(teacher=teacher.teacher).filter(batch=batch)
				att_list = Attendance.objects.filter(subject=subject).filter(date=date)
				for att in att_list:
					if att.student in students:
						att.p_a = True
						att.save(force_update=True)
					else:
						att.p_a = False
						att.save(force_update=True)			
				dv_att = Attendance.objects.filter(subject=subject).filter(date=date)
				tab='Edit'
				return render(request, 'ucoe/TAttendance.html',{'tab':tab,'teacher':teacher,'batches':batches,'datestr':datestr,'dv_att':dv_att,'batch':batch})
			else :
				logout(request)
				return render(request, 'ucoe/Login.html',{})
		else:
			return home(request)
	else:
		return home(request)

def monthview_tatt(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			pk=request.POST.get('batch')
			month=int(request.POST.get('month'))
			teacher = get_or_none(TeacherRel,user=user)
			batch=get_or_none(Batch,pk=pk)
			batches = Subject.objects.filter(teacher=teacher.teacher)
			if batch is not None:
				students = Student.objects.filter(batch=batch)
				date = timezone.now().date() 
				subject = Subject.objects.filter(batch=batch).filter(teacher=teacher.teacher)
				att = Attendance.objects.filter(subject=subject).filter(date=date)
				view_dates = Attendance.objects.filter(subject=subject).values_list('date',flat=True).distinct().order_by('date')
				v_dates = []
				for date in view_dates:
					if date.month==month:
						v_dates.append(date)
				v_att = []
				for student in students:
					temp = []
					abc=[]
					temp.append(student.roll_no)
					temp.append(student.name)
					temp_att = list(Attendance.objects.filter(subject=subject).filter(student=student).order_by('date'))
					i=0
					for t in temp_att:	
						if t.p_a == True:
							i = i+1
							if t.date.month==month:
								abc.append(i)
						else:
							if t.date.month==month:
								abc.append('x')
					temp.append(abc)
					v_att.append(temp)
					tab = 'View'
				return render(request, 'ucoe/TAttendance.html',{'tab':tab,'teacher':teacher,'batches':batches,'batch':batch,'students':students,'v_att':v_att,'v_dates':v_dates})
			else:
				return render(request, 'ucoe/TAttendance.html',{'teacher':teacher,'batches':batches,'batch':batch})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)


##########################################################################################################################################
'''      $$$$$$$$$  STUDENT       DEFINITIONS  $$$$$$$$$      '''
##########################################################################################################################################


def smarks(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(StudentRel,user=user) is not None:
			student = StudentRel.objects.filter(user=user)[0]
			marks = Marks.objects.filter(student=student.student)
			return render(request, 'ucoe/SMarks.html',{'student':student,'marks':marks})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)

def satt(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(StudentRel,user=user) is not None:
			student = StudentRel.objects.filter(user=user)[0]
			batch = student.student.batch
			subjects = Subject.objects.filter(batch=batch)
			dates =  Attendance.objects.filter(subject__in=subjects).values_list('date',flat=True).distinct().order_by('date')
			att = []
			for subject in subjects:
				sub = Attendance.objects.filter(subject=subject)
				datessub = sub.values_list('date',flat=True).distinct().order_by('date')
				sublist = [subject.subject]
				i=0
				for date in dates:
					if date in datessub:
						if len(sub.filter(student=student.student).filter(date=date)) > 0:
							if sub.filter(student=student.student).filter(date=date)[0].p_a == True:
								i = i + 1
								sublist.append(i)
							else:
								sublist.append('A')
					else:
						sublist.append('x')
				att.append(sublist)
			return render(request, 'ucoe/SAttendance.html',{'student':student,'att':att,'dates':dates})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)


def download_file(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			name= get_or_none(TeacherRel,user=user).user.username
			passwd = randint(100000,999999)
			teacher = get_or_none(TeacherRel,user=user).teacher
			teacher.smb_passwd = str(passwd)
			teacher.save(force_update=True) 
			BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
			os.system("python  " + os.path.join(BASE_DIR, "scripts/") + "create_smbuser.py  " + name + "  " + str(passwd))
			response = HttpResponse(open(os.path.join(BASE_DIR, "media/") + "Myshare_Connect.exe").read(),content_type='application/force-download')
			response['Content-Disposition'] = 'attachment; filename=Myshare_Connect.exe'
			return response
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)

##########################################################################################################################################
#######################     Share Definitions
##########################################################################################################################################
def tshare(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			a=0
			b=0
			teacher = get_or_none(TeacherRel,user=user)
			return render(request,'ucoe/MyShare.html',{'check1':a,'check2':b,'teacher':teacher})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)



def sshare(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(StudentRel,user=user) is not None:
			a=0
			b=1
			student = StudentRel.objects.filter(user=user)[0]
			return render(request,'ucoe/MyShare.html',{'check1':a,'check2':b,'student':student})
		else :
			logout(request)
			return render(request, 'ucoe/Login.html',{})
	else:
		return home(request)

'''      $$$$$$$$$  Statistics  $$$$$$$$$      '''

def stat(request):
	user = request.user	 
	if user.is_authenticated():
		list2=Batch.objects.filter(year='2')
		list3=Batch.objects.filter(year='3')
		list4=Batch.objects.filter(year='4')
		return render(request,'ucoe/Statistics.html',{'list2':list2,'list3':list3,'list4':list4})



def statshow(request,title):
	i=0
	k=0
	user = request.user
	if user.is_authenticated():
		list2=Batch.objects.filter(year='2')
		list3=Batch.objects.filter(year='3')
		list4=Batch.objects.filter(year='4')
		group = get_object_or_404(Batch,pk=title)
		students = Student.objects.filter(batch=group)
		sub = Subject.objects.filter(batch=group)
		sub1=len(sub)
		count = [0]*sub1
		count1 = [0]*sub1
		atten = [0]*sub1
		mark1 = [0]*sub1
		mark2 = [0]*sub1
		mark3 = [0]*sub1
		for su in sub:
			for s in students:			
				attend=Attendance.objects.filter(student=s).filter(subject=su)
				mark=Marks.objects.filter(student=s).filter(subject=su)[0]
				sum1=mark.mst1+mark.mst2+mark.att+mark.assessment+mark.sports
				atten1=len(attend)
				for t in attend:
					if t.p_a == True:
						i = i+1
				j=i/atten1
				if j<0.75:
					count[k]=count[k]+1
				else:
					if j>0.85:
						count1[k]=count1[k]+1
					else:
						atten[k]=atten[k]+1 
				i=0
				if sum1<20:
					mark1[k]=mark1[k]+1
				else:
					if sum1>40:
						mark3[k]=mark3[k]+1
					else:
						mark2[k]=mark2[k]+1 
			k=k+1
		chartdata = zip(sub,count,count1,atten)
		char2=zip(sub,mark1,mark2,mark3)
		return render(request,'ucoe/Statistics.html',{'list2':list2,'list3':list3,'list4':list4,'chartdata':chartdata,'char2':char2})



def tprintatt(request):
	pass

########################################Research and Publications#########################################
def viewPR(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user).teacher
			pubs = Pubs.objects.filter(teacher=teacher)
			res = Rguide.objects.filter(teacher=teacher)
			return render(request,'ucoe/Res.html',{'pubs':pubs,'res':res})
def editPub(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user).teacher
			pk = request.POST.get('pk')
			title = request.POST.get('title')
			j_c = request.POST.get('jc')
			j_c_name = request.POST.get('j_c_name')
			issn_isbn = request.POST.get('issn_isbn')
			n_in = request.POST.get('n_in')
			authors = request.POST.get('authors')
			new_pub = get_or_none(Pubs,id=int(pk))
			new_pub.title=title
			new_pub.j_c=j_c
			new_pub.j_c_name=j_c_name
			new_pub.issn_isbn=issn_isbn
			new_pub.n_in=n_in
			new_pub.authors=authors
			new_pub.save(force_update=True)
			pubs = Pubs.objects.filter(teacher=teacher)
			res = Rguide.objects.filter(teacher=teacher)
			msg = "The Publication entitled " + title + " has been edited."
			return render(request,'ucoe/Res.html',{'pubs':pubs,'res':res,'title':msg})
def addPub(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user).teacher
			pk = request.POST.get('pk')
			title = request.POST.get('title')
			j_c = request.POST['j_c']		
			print j_c		
			j_c_name = request.POST.get('j_c_name')
			issn_isbn = request.POST.get('issn_isbn')
			n_in = request.POST['n_in']
			authors = request.POST.get('authors')
			new_pub = Pubs(title=title,j_c=j_c,j_c_name=j_c_name,issn_isbn=issn_isbn,n_in=n_in,authors=authors,teacher=teacher)
			new_pub.save()
			pubs = Pubs.objects.filter(teacher=teacher)
			res = Rguide.objects.filter(teacher=teacher)
			msg = "The Publication entitled " + title + " has been added."
			return render(request,'ucoe/Res.html',{'pubs':pubs,'res':res,'title':msg})

def deletePub(request,pk):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user).teacher
			new_pub = Pubs.objects.filter(teacher=teacher).filter(id=int(pk))[0]
			title=new_pub.title
			new_pub.delete()
			pubs = Pubs.objects.filter(teacher=teacher)
			res = Rguide.objects.filter(teacher=teacher)
			msg = "The Publication entitled " + title + " has been deleted."
			return render(request,'ucoe/Res.html',{'pubs':pubs,'res':res,'title':msg})
def editRguide(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user).teacher
			pk = request.POST.get('pk')
			title = request.POST.get('title')
			enroll = request.POST.get('enroll')
			degreeStudent = request.POST.get('degreeStudent')
			sub_date= request.POST.get('sub_date')
			new_pub = get_or_none(Rguide,id=int(pk))
			new_pub.title=title
			new_pub.enroll=enroll
			new_pub.degreeStudent=degreeStudent
			new_pub.sub_date=sub_date
			new_pub.save(force_update=True)
			pubs = Pubs.objects.filter(teacher=teacher)
			res = Rguide.objects.filter(teacher=teacher)
			msg = "The Academic Research Record entitled " + title + " has been edited."
			return render(request,'ucoe/Res.html',{'pubs':pubs,'res':res,'title':msg})


def addRguide(request):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user).teacher
			pk = request.POST.get('pk')
			title = request.POST.get('title')
			enroll = request.POST.get('enroll')
			degreeStudent = request.POST.get('degreeStudent')
			sub_date= request.POST.get('sub_date')
			new_pub = Rguide(title=title,enroll=enroll,degreeStudent=degreeStudent,sub_date=sub_date,teacher=teacher)
			new_pub.save()
			pubs = Pubs.objects.filter(teacher=teacher)
			res = Rguide.objects.filter(teacher=teacher)
			msg = "The Academic Research Record entitled " + title + " has been added."
			return render(request,'ucoe/Res.html',{'pubs':pubs,'res':res,'title':msg})
def deleteRguide(request,pk):
	user = request.user
	if user.is_authenticated():
		if get_or_none(TeacherRel,user=user) is not None:
			teacher = get_or_none(TeacherRel,user=user).teacher
			new_pub = Rguide.objects.filter(teacher=teacher).filter(id=int(pk))[0]
			title=new_pub.title
			new_pub.delete()
			pubs = Pubs.objects.filter(teacher=teacher)
			res = Rguide.objects.filter(teacher=teacher)
			msg = "The Academic Research Record entitled " + title + " has been deleted."
			return render(request,'ucoe/Res.html',{'pubs':pubs,'res':res,'title':msg})
# Create your views here.
