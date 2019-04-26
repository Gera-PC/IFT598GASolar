from django.db import models

# Create your models here.
class Client(models.Model):
    client_ID = models.CharField(max_length=10, unique=True)
    client_name = models.CharField(max_length=40)
    client_type = models.CharField(max_length=50)

class TestStandard(models.Model):
    standard_ID = models.CharField(max_length=10, unique=True)
    standard_name = models.CharField(max_length=50)
    description = models.TextField(max_length=500)
    published_date = models.CharField(max_length=50)

class TestSequence(models.Model):
    sequence_ID = models.CharField(max_length=10, unique=True)
    sequence = models.CharField(max_length=50)

class User(models.Model):
    userID = models.CharField(max_length=10, unique=True)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    middle_name = models.CharField(max_length=50)
    job_title = models.CharField(max_length=50)
    email = models.EmailField(max_length=50)
    office_phone = models.CharField(max_length=50)
    cell_phone = models.CharField(max_length=50)
    prefix = models.CharField(max_length=50)
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
    cell_technology = models.CharField(max_length=50)
    cell_manufacturer = models.CharField(max_length=50)
    number_of_cells = models.PositiveIntegerField(null=True, blank=True)
    number_of_cells_in_series = models.PositiveIntegerField(blank=True, null=True)
    number_of_series_strings = models.PositiveIntegerField(blank=True, null=True)
    number_diodes = models.PositiveIntegerField(blank=True, null=True)
    product_length = models.FloatField(blank=True, null=True)
    product_width = models.FloatField(blank=True, null=True)
    product_weight = models.FloatField(blank=True, null=True)
    superstate_type = models.CharField(max_length=50)
    superstate_manufacturer = models.CharField(max_length=50)
    substrate_type = models.CharField(max_length=50)
    substrate_manufacturer = models.CharField(max_length=50)
    frame_type = models.CharField(max_length=50)
    frame_adhesive = models.CharField(max_length=50)
    encapsulate_type = models.CharField(max_length=50)
    encapsulate_manufacturer = models.CharField(max_length=50)
    junction_box_type = models.CharField(max_length=50)
    junction_box_manufacturer = models.CharField(max_length=50)

class Certificate(models.Model):
    certificate_number = models.CharField(max_length=20)
    userID = models.ForeignKey(User, to_field='userID', on_delete=models.CASCADE)
    report_number = models.CharField(max_length=50)
    issue_date = models.CharField(max_length=20)
    standard_ID = models.ForeignKey(TestStandard, to_field='standard_ID', on_delete=models.CASCADE)
    location_ID = models.ForeignKey(Location, to_field='location_ID', on_delete=models.CASCADE)
    model_number = models.ForeignKey(Product, to_field='model_number', on_delete=models.CASCADE)

class PerformanceData(models.Model):
    model_number = models.ForeignKey(Product, to_field='model_number', on_delete=models.CASCADE)
    sequence_ID = models.ForeignKey(TestSequence, to_field='sequence_ID', on_delete=models.CASCADE)
    max_system_voltage = models.FloatField(blank=True, null=True)
    voc = models.FloatField(blank=True, null=True)
    isc = models.FloatField(blank=True, null=True)
    vmp = models.FloatField(blank=True, null=True)
    imp = models.FloatField(blank=True, null=True)
    pmp = models.FloatField(blank=True, null=True)
    ff = models.FloatField(blank=True, null=True)

class Service(models.Model):
    service_ID = models.CharField(max_length=10)
    service_name = models.CharField(max_length=50)
    description = models.TextField(max_length=500)
    is_FI_required = models.BooleanField(default=False)
    FI_frequency = models.CharField(max_length=50)
    standard_ID = models.ForeignKey(TestStandard, to_field='standard_ID', on_delete=models.CASCADE)
