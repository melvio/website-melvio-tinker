from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    path('about', views.about, name='blog-about'),
    path('', views.about, name='blog-about'),
    path('blog', views.home, name="blog-home"),
]
