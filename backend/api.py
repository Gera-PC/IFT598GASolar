from rest_framework import permissions, viewsets
from backend.models import Product, Service, Certificate
from backend.serializers import ServiceSerializer, ProductSerializer, CertificateSerializer

class ProductView(viewsets.ReadOnlyModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    permission_classes = [
        permissions.AllowAny
    ]

class CerificateView(viewsets.ReadOnlyModelViewSet):
    queryset = Certificate.objects.all()
    serializer_class = CertificateSerializer
    permission_classes = [
        permissions.AllowAny
    ]

class ServiceView(viewsets.ReadOnlyModelViewSet):
    queryset = Service.objects.all()
    serializer_class = ServiceSerializer
    permission_classes = [
        permissions.AllowAny
    ]