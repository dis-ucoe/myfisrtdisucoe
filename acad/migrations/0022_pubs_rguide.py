# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-10-17 07:14
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('acad', '0021_auto_20161017_1243'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pubs',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('j_c', models.BooleanField(default=True)),
                ('j_c_name', models.CharField(max_length=50)),
                ('issn_isbn', models.CharField(max_length=15)),
                ('n_in', models.BooleanField(default=True)),
                ('authors', models.CharField(max_length=100)),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='acad.Teacher')),
            ],
        ),
        migrations.CreateModel(
            name='Rguide',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('enroll', models.DateField()),
                ('degreeStudent', models.CharField(max_length=50)),
                ('sub_date', models.DateField()),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='acad.Teacher')),
            ],
        ),
    ]
