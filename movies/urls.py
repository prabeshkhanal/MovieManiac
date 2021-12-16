from django.urls import path
from . import views

urlpatterns = [
    path('', views.home),
    path('index', views.home),
    path('home', views.movielist),
    path('about', views.about),
    path('page', views.page),
    path('single/<moviename>', views.singlemovielist),
]