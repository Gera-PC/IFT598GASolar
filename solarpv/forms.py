from django import forms
from .models import User, Certificate, Location, Client, Product, TestStandard

class ClientForm(forms.ModelForm):

    class Meta:
        model = Client
        fields = ['client_ID', 'client_name', 'client_type']


