"""solarpv_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from django.shortcuts import redirect
from solarpv import views

app_name = 'solarpv'

urlpatterns = [
    path('', views.main, name="main"),
    path('register/', views.register, name="register"),
    path('login/', views.login_view, name="login"),
    path('module/', views.module, name="module"),
    path('performance/', views.performance, name="performance"),
    path('analytics/', views.analytics, name="analytics"),
    path('faq/', views.faq, name="faq"),
    path('client/', views.client, name="client"),
    path('location/', views.location, name="location"),
    path('product/', views.product, name="product"),
    path('test-standard/', views.test_standard, name="test-standard"),
    path('certificate/', views.certificate, name="certificate"),
    path('dashboard/', views.dashboard, name="dashboard"),
    path('main/', lambda request: redirect('/', permanent=False)),
]
