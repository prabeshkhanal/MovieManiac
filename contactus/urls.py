from django.contrib import admin
from django.urls import path
from . import views
# from UserLogin import views



urlpatterns = [

    path('contactus', views.usercontact),

]