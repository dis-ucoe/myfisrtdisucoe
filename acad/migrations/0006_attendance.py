# -*- coding: utf-8 -*-
# Generated by Django 1.9.2 on 2016-03-07 04:44
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('acad', '0005_auto_20160307_1014'),
    ]

    operations = [
        migrations.CreateModel(
            name='Attendance',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='acad.Student')),
                ('subject', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='acad.Subject')),
            ],
        ),
    ]
