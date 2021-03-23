from django.shortcuts import render
from django.http import HttpResponse


# view on homepage of the blog
def home(request):
    return render(request=request,
                  template_name='blog/home.html')


def about(request):
    return render(request=request,
                  template_name='blog/about.html')