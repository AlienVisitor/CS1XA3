"""django_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include

root = 'e/gabah/' # TODO change me to your macid

# this will send requests beginning with localhost:<portnum>/e/macid/
# to fvarious apps to be handled
urlpatterns = [
    path(root + 'hello/', include('helloapp.urls')) ,
    path(root + 'testreq/', include('testrequests.urls')) ,
    path(root + 'testjson/', include('jsontest.urls')) ,
    path(root + 'testmodel/', include('modeltest.urls')) ,
    path(root + 'templateapp/', include('templateapp.urls')) ,
    path(root + 'userauthapp/', include('userauthapp.urls')) ,
]
