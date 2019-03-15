from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def hello(request):
	return HttpResponse("HELLO")
def gettest(request):
	keys=request.GET
	name=keys.get("name","")
	age=keys.get("age","")
	return HttpResponse("Hello " + name + " your " + " old")
def posttest(request):
	keys=request.POST
	name=keys.get("name","")
	age=keys.get("age","")
	return HttpResponse("Hello " + name + " your " + " old")

