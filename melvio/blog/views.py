from django.shortcuts import render
from django.http import HttpResponse


# view on homepage of the blog
def home(request):
    return HttpResponse("<h1>Home Blog</h1>")


def about(request):
    print(request)
    return HttpResponse("<h2>It's e me!</h2>")