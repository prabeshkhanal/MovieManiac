from django.shortcuts import render, redirect
from movies.models import movie

# Create your views here.
def home(request):
    return render(request, "index.html")

def about(request):
    return render(request, "about.html")

def page(request):
    return render(request, "page.html")

def movielist(request):
    data = movie.objects.all()
    return render(request, "home.html", {'show': data})

def singlemovielist(request, moviename):
    data1 = movie.objects.get(movie_name=moviename)
    return render(request, "page.html", {'single': data1})

def about(request):
    return render(request, "about.html")
