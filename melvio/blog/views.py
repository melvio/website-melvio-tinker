from django.shortcuts import render
from django.http import HttpResponse

posts = [
    {
        'author': 'Melvin',
        'title' : 'blog post',
        'content': 'first post',
        'date_posted': 'August 27, 2020'
    },
    {
        'author': 'Melvin2',
        'title': 'blog post2',
        'content': '2nd post',
        'date_posted': 'August 28, 2020'
    }
]


# view on homepage of the blog
def home(request):
    context = {'posts': posts,
               'title': 'hi'}
    return render(request=request,
                  template_name='blog/home.html',
                  context=context)


def about(request):
    return render(request=request,
                  template_name='blog/about.html')