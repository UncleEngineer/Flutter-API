from django.urls import path
from .views import Home, APIExample

urlpatterns = [
    path('', Home),
    path('api',APIExample),
    
]