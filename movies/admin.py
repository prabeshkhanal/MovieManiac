from django.contrib import admin
from movies.models import movie
# Register your models here.

class movieAdmin(admin.ModelAdmin):
    list_display = ('movie_photo','movie_name','movie_date','movie_description','movie_genre','movie_review')

admin.site.register(movie,movieAdmin)

