from rest_framework import routers
from backend.api import ProductView, ServiceView, CerificateView


router = routers.DefaultRouter()
router.register('products', ProductView, 'products')
router.register('service', ServiceView, 'service')
router.register('certificate', CerificateView, 'certificate')

urlpatterns = router.urls