from __future__ import unicode_literals

from django.contrib.auth.models import User

from django.db import models

class Batch(models.Model):
	start_year=models.IntegerField()
	year=models.IntegerField()
	sem=models.IntegerField()
	group=models.CharField(max_length=10)
	def __str__(self):
		return str(self.group) + ":" + str(self.sem) + ":" + str(self.start_year)

class Teacher(models.Model):
	name=models.CharField(max_length=50)
	batch=models.ForeignKey(Batch)
	gender = models.CharField(max_length=1)
	smb_passwd=models.CharField(max_length=6,null=True,default='0')
	def __str__(self):
		return self.name 
	

class TeacherRel(models.Model):
	user=models.OneToOneField(User,on_delete=models.CASCADE)
	teacher=models.OneToOneField(Teacher,on_delete=models.CASCADE)
	def __str__(self):
		return self.user.username + ":" + self.teacher.name
	
class HodRel(models.Model):
	user=models.OneToOneField(User,on_delete=models.CASCADE)
	hod=models.OneToOneField(Teacher,on_delete=models.CASCADE)
	def __str__(self):
		return self.user.username + ":" + self.hod.name

class Student(models.Model):
	name=models.CharField(max_length=50)
	batch=models.ForeignKey(Batch)
	gender = models.CharField(max_length=1)
	roll_no = models.IntegerField()
	def __str__(self):
		return self.name 

class StudentRel(models.Model):
	user=models.OneToOneField(User,on_delete=models.CASCADE)
	student=models.OneToOneField(Student,on_delete=models.CASCADE)
	def __str__(self):
		return self.user.username + ":" + self.student.name

class Subject(models.Model):
	teacher=models.ForeignKey(Teacher)
	batch=models.ForeignKey(Batch)
	subject=models.CharField(max_length=50)
	def __str__(self):
		return self.subject + ":" + str(self.batch.group)
	

class Marks(models.Model):
	student=models.ForeignKey(Student,null=True)
	subject=models.ForeignKey(Subject)
	mst1=models.IntegerField(default=0)
	mst2=models.IntegerField(default=0)
	att=models.IntegerField(default=0)
	assessment=models.IntegerField(default=0)
	sports=models.IntegerField(default=0)
	flag=models.BooleanField(default=False)
	

class Attendance(models.Model):
	student=models.ForeignKey(Student)
	subject=models.ForeignKey(Subject)
	p_a = models.BooleanField(default=True)
	date = models.DateField()
	

class CoverNews(models.Model):
	title=models.CharField(max_length=50)
	body=models.CharField(max_length=500)
	def __str__(self):
		return self.title

class TeacherNews(models.Model):
	title=models.CharField(max_length=50)
	body=models.CharField(max_length=500)
	imp = models.BooleanField(default=True)
	def __str__(self):
		return self.title

class TeacherEvents(models.Model):
	title=models.CharField(max_length=50)
	body=models.CharField(max_length=500)
	imp = models.BooleanField(default=True)
	def __str__(self):
		return self.title

class StudentEvents(models.Model):
	title=models.CharField(max_length=50)
	body=models.CharField(max_length=500)
	imp = models.BooleanField(default=True)
	def __str__(self):
		return self.title

class Pubs(models.Model):
	title = models.CharField(max_length=50)
	j_c = models.CharField(max_length=15) 
	j_c_name = models.CharField(max_length=50)
	issn_isbn = models.CharField(max_length=15)
	n_in = models.CharField(max_length=15)
	authors = models.CharField(max_length=100)
	teacher=models.ForeignKey(Teacher,on_delete=models.CASCADE)
	def __str__(self):
		return self.title

class Rguide(models.Model):
	title = models.CharField(max_length=50)
	enroll = models.DateField()
	degreeStudent = models.CharField(max_length=50)
	sub_date = models.DateField()
	teacher=models.ForeignKey(Teacher,on_delete=models.CASCADE)
	def __str__(self):
		return self.title + "-" + self.degreeStudent
	
# Create your models here.
