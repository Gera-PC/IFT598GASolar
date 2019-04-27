from django.db import models

# Create your models here.
class Client(models.Model):
    client_ID = models.CharField(max_length=10, unique=True)
    client_name = models.CharField(max_length=40)
    client_type = models.CharField(max_length=50)
    def __str__(self):
        return self.client_name

class TestStandard(models.Model):
    standard_ID = models.CharField(max_length=10, unique=True)
    standard_name = models.CharField(max_length=50)
    description = models.TextField(max_length=500)
    published_date = models.CharField(max_length=50)
    
class User(models.Model):
    userID = models.CharField(max_length=10, unique=True)
    password = models.CharField(max_length=20)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    middle_name = models.CharField(max_length=50, null=True, blank=True)
    job_title = models.CharField(max_length=50, blank=True, null=True)
    email = models.EmailField(max_length=50, blank=True, null=True)
    office_phone = models.CharField(max_length=50, blank=True, null=True)
    cell_phone = models.CharField(max_length=50, null=True, blank=True)
    client_ID = models.ForeignKey(Client, to_field='client_ID', on_delete=models.CASCADE)

class Location(models.Model):
    location_ID = models.CharField(max_length=10, unique=True)
    address1 = models.CharField(max_length=50)
    address2 = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
    state = models.CharField(max_length=50)
    postal_code = models.CharField(max_length=50)
    country = models.CharField(max_length=50)
    phone_number = models.CharField(max_length=50)
    fax_number = models.CharField(max_length=50)
    client_ID = models.ForeignKey(Client, to_field='client_ID', on_delete=models.CASCADE)

class Product(models.Model):
    model_number = models.CharField(max_length=50, unique=True)
    product_name = models.CharField(max_length=50)

class Certificate(models.Model):
    certificate_number = models.ForeignKey(Product, to_field='model_number', on_delete=models.CASCADE)
    report_number = models.CharField(max_length=50)
    issue_date = models.DateField()
    standard_ID = models.ForeignKey(TestStandard, to_field='standard_ID', on_delete=models.CASCADE)
    location_ID = models.ForeignKey(Location, to_field='location_ID', on_delete=models.CASCADE)
    model_number = models.CharField(max_length=50)
