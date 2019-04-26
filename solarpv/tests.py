from django.test import TestCase
from django.shortcuts import HttpResponse
from xlrd import open_workbook
from django.db import transaction
from backend.models import *
# Create your tests here.
import os

def send(request):
    print(os.getcwd())
    wb = open_workbook('solarpv/DB.xlsx')

    client = wb.sheet_by_index(3)
    for rows in range(1, client.nrows):
        with transaction.atomic():
            try:
                clientid = Client.objects.get(client_ID=client.cell_value(rows,1))
                Location.objects.create(location_ID=client.cell_value(rows, 0),
                                       client_ID=clientid,
                                        address1=client.cell_value(rows,2),
                                        address2=client.cell_value(rows,3),
                                        city=client.cell_value(rows,4),
                                       state=client.cell_value(rows, 5),
                                        postal_code=client.cell_value(rows,6),
                                        country=client.cell_value(rows,7),
                                        phone_number=client.cell_value(rows,8),
                                        fax_number=client.cell_value(rows,9))
            except:
                print("Pass")
    return HttpResponse('Done')

def getit(request):
    t = TestStandard.objects.get(standard_ID='UL1703')
    print(t.standard_ID)