from django.contrib import admin
from django.urls import path
from . import views
# from UserLogin import views



urlpatterns = [

    path('userregister', views.userregister),
    path('userlogin', views.userlogin),
    path('usregister', views.usregister),
# path('register', views.register),

]