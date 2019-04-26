from django.http import HttpResponseRedirect, HttpResponse
from django.contrib.auth import authenticate, login
from django.shortcuts import render, redirect
from django.contrib.auth.models import User

# Create your views here.
from django.urls import reverse
from solarpv.models import User, Client
from solarpv.forms import ClientForm


def main(request):
    return render(request, 'solarpv/main.html')

def register(request):
    client_name = Client.objects.all()
    if request.method == "POST":
        company = request.POST['company']
        client = Client.objects.get(client_ID=company)
        reg_form = User.objects.create(userID=request.POST['username'], client_ID=client)
        reg_form.password = request.POST['password']
        reg_form.first_name = request.POST['first']
        reg_form.middle_name = request.POST['middle']
        reg_form.last_name = request.POST['last']
        reg_form.cell_phone = request.POST['cell_phone']
        reg_form.job_title = request.POST['job_title']
        reg_form.email = request.POST['email']
        reg_form.office_phone = request.POST['office_phone']
        reg_form.client_ID = client
        reg_form.save()
        return HttpResponse('Success')


    return render(request, 'solarpv/register.html', {'client_name':client_name})

def login_view(request):
    error = ""
    if request.method == "POST":
        username = request.POST['userid']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            if user.is_superuser:
                return redirect("/admin/")
            elif user.is_staff:
                return redirect("/")
            else:
                error = "Error, User found, but not a staff"
        else:
            error = "Error, User not found"
    return render(request, 'solarpv/login.html', {'error':error})

def faq(request):
    return render(request, 'solarpv/faq.html')

def performance(request):
    return render(request, 'solarpv/performance.html')

def module(request):
    return render(request, 'solarpv/module.html')

def analytics(request):
    return render(request, 'solarpv/analytics.html')

def client(request):

    if request.method != 'POST':
        form = ClientForm()
    else:
        form = ClientForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse('solarpv:dashboard'))
    context = {'form': form}
    return render(request, 'solarpv/client.html', context)


def location(request):
    return render(request, 'solarpv/location.html')

def product(request):
    return render(request, 'solarpv/product.html')

def test_standard(request):
    return render(request, 'solarpv/test-standard.html')

def certificate(request):
    return render(request, 'solarpv/certificate.html')

def dashboard(request):
    return render(request, 'solarpv/dashboard.html')



