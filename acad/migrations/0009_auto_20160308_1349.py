# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-08 08:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acad', '0008_student_roll_no'),
    ]

    operations = [
        migrations.AlterField(
            model_name='marks',
            name='sports',
            field=models.IntegerField(default=0),
        ),
    ]
