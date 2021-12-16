from django.db import models

# Create your models here.
class Contactus(models.Model):
    user_fullname = models.CharField(max_length=100)
    user_email = models.CharField(max_length=100)
    user_message = models.CharField(max_length=100)