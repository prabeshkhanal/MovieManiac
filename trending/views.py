from django.shortcuts import render
from trending.models import Trending
# Create your views here.

# def trending(request):
#     return render(request, "trending.html")


def trendinglist(request):
    data = Trending.objects.all()
    return render(request, "trending.html", {'show': data})
