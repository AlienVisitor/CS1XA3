from django.urls import path
from . import views

# mapped from path hello/
urlpatterns = [
    path('' , views.Hello , name = "helloapp.Hello" ) ,
]
