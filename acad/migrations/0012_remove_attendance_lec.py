# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-13 16:47
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('acad', '0011_auto_20160311_2011'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='attendance',
            name='lec',
        ),
    ]
