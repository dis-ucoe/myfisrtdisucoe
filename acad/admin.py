from django.contrib import admin
from .models import StudentRel,TeacherRel,HodRel,Student,Teacher,Batch,Marks,Subject,Attendance,CoverNews,TeacherNews,TeacherEvents,StudentEvents
admin.site.register(StudentRel)
admin.site.register(TeacherRel)
admin.site.register(HodRel)
admin.site.register(Teacher)
admin.site.register(Student)
admin.site.register(Batch)
admin.site.register(Marks)
admin.site.register(Subject)
admin.site.register(Attendance)
admin.site.register(CoverNews)
admin.site.register(TeacherNews)
admin.site.register(TeacherEvents)
admin.site.register(StudentEvents)
# Register your models here.
