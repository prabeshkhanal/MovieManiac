from django.shortcuts import render, redirect
from contactus.models import Contactus

# Create your views here.

def usercontact(request):
    if request.method == "POST":
        fullname = request.POST['fullname']
        email = request.POST['email']
        message = request.POST['message']

        form = Contactus(user_fullname=fullname, user_email=email, user_message=message)
        form.save()
        return redirect('/home')
    else:
        return render(request, "contactus.html")
