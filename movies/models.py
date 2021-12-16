from django.db import models

# Create your models here.

class movie(models.Model):
    movie_photo = models.ImageField(max_length=100)
    movie_name = models.CharField(max_length=100)
    movie_date = models.CharField(max_length=100)
    movie_description = models.CharField(max_length=1000, default="")
    movie_genre = models.CharField(max_length=50, default="")
    movie_review = models.CharField(max_length=50, default="")