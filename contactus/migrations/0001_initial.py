# Generated by Django 2.2.5 on 2020-02-12 12:34

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Contactus',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_full_name', models.CharField(max_length=100)),
                ('user_email', models.CharField(max_length=100)),
                ('user_message', models.CharField(max_length=100)),
            ],
        ),
    ]
