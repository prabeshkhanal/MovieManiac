from django.contrib import admin
from trending.models import Trending

# Register your models here.

class trendingAdmin(admin.ModelAdmin):
    list_display = ('movie_photo','movie_name','movie_date','movie_description','movie_genre','movie_review')

admin.site.register(Trending,trendingAdmin)