from django.db import models

# Create your models here.
class Commentbyuser(models.Model):
    username = models.CharField(max_length=100)
    rating = models.IntegerField()
    comment = models.CharField(max_length=100)

