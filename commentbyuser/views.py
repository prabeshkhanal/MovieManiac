from django.shortcuts import render, redirect
from commentbyuser.models import Commentbyuser

# Create your views here.

def commentbyuser(request):
    if request.method == "POST":
        username = request.POST['username']
        rating = request.POST['rating']
        comment = request.POST['comment']

        form = Commentbyuser(username=username, rating=rating, comment=comment)
        form.save()
        return redirect('/home')
    else:
        return render(request, "page.html")
