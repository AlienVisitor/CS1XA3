from django.shortcuts import render
from django.http import HttpResponse

# the following views are made to handle requests from GetPostExample.elm

# handle a get request from
#    localhost:<portnum>/e/macid/testget/?name=v1&age=v2
def get_view(request):
    get_dict = request.GET
    name     = get_dict.get("name","")
    age      = get_dict.get("age","")

    return HttpResponse("Hello " + name + " you're " + age + " years old")

# handle a post request from
#    localhost:<portnum>/e/macid/testpost/
def post_view(request):
    post_dict = request.POST
    name     = post_dict.get("name","")
    age      = post_dict.get("age","")

    return HttpResponse("Hello " + name + " you're " + age + " years old")
