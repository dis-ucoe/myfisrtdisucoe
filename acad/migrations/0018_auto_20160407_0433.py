# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-04-06 23:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('acad', '0017_covernews_studentevents_teacherevents_teachernews'),
    ]

    operations = [
        migrations.AddField(
            model_name='studentevents',
            name='imp',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='teacherevents',
            name='imp',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='teachernews',
            name='imp',
            field=models.BooleanField(default=True),
        ),
    ]
