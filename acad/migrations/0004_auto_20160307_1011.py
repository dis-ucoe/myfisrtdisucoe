# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-07 04:41
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('acad', '0003_auto_20160306_1548'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='marks',
            name='batch',
        ),
        migrations.RemoveField(
            model_name='marks',
            name='student',
        ),
        migrations.RemoveField(
            model_name='marks',
            name='teacher',
        ),
        migrations.DeleteModel(
            name='Marks',
        ),
    ]
