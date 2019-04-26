from django.contrib import admin

# Register your models here.
from solarpv.models import Client, Location, Product, TestStandard, Certificate, User

admin.site.register(User)
admin.site.register(Client)
admin.site.register(Location)
admin.site.register(Product)
admin.site.register(TestStandard)
admin.site.register(Certificate)
