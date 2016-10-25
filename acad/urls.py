from django.conf.urls import url
from . import views
urlpatterns = [

	url(r'^$' ,					views.cover,		name='Cover'),
	url(r'^home/$' ,				views.home,		name='Home'),
	url(r'^login/$',				views.auth, 		name='Auth'),
	url(r'^logout/$',				views.log_out, 		name='Logout'),
	

#	HOD Urls
	url(r'^hod/stat/$',				views.stat,		name='Stat'),
	url(r'^hod/stat/(?P<title>.*)/$',		views.statshow,		name='StatShow'),

#	Teacher Urls
	url(r'^teacher/marks/$',			views.tmarks, 		name='TMarks'),
	url(r'^teacher/marks/(?P<pk>[0-9]+)',		views.view_tmarks,	name='TMarksBatch'),
	url(r'^teacher/marks/save',			views.save_tmarks,	name='SaveTMarks'),
	url(r'^teacher/attendance/$',			views.tatt, 		name='TAtt'),
	url(r'^teacher/attendance/(?P<pk>[0-9]+)',	views.view_tatt,	name='TAttBatch'),
	url(r'^teacher/attendance/save',		views.save_tatt,	name='SaveTAtt'),
	url(r'^teacher/datewiseattendance/$',		views.dateview_tatt,	name='ViewTAtt'),
	url(r'^teacher/datewiseattendance/save$',	views.datesave_tatt,	name='DateSaveTAtt'),
	url(r'^teacher/monthly-attendance/$',		views.monthview_tatt,	name='MonthViewTAtt'),
	url(r'^teacher/download$',			views.download_file,	name='DownloadFile'),

#       Student Urls
	url(r'^student/marks/$',			views.smarks, 		name='SMarks'),
	url(r'^student/attendance/$',			views.satt, 		name='SAtt'),


#       Share URLs
	url(r'^teacher/share/$',			views.tshare, 		name='TShare'),
	url(r'^student/share/$',			views.sshare, 		name='SShare'),

#       Print URL's
	url(r'^teacher/printatt$',			views.tprintatt, 		name='TPrintAtt'),

#       Res Urls
	url(r'^pr/$',				views.viewPR, 		name='ViewPR'),
	url(r'^pubs/edit$',			views.editPub, 		name='EditPub'),
	url(r'^pubs/add$',			views.addPub, 		name='AddPub'),
	url(r'^pubs/delete/(?P<pk>[0-9]+)$',	views.deletePub, 	name='DeletePub'),
	url(r'^res/edit$',			views.editRguide, 	name='EditRes'),
	url(r'^res/add$',			views.addRguide, 	name='AddRes'),
	url(r'^res/delete/(?P<pk>[0-9]+)$',	views.deleteRguide,	name='DeleteRes'),

	

]
