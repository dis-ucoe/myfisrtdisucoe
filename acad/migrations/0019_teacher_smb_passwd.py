# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-04-08 10:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acad', '0018_auto_20160407_0433'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='smb_passwd',
            field=models.CharField(default='0', max_length=6, null=True),
        ),
    ]
