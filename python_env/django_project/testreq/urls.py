from django.urls import path
from . import views

urlpatterns=[
	path('',views.hello,name="testreq-hello"),
	path('',views.getrequest,name="testreq-getreqeuest"),
	path('',views.postrequest,name="testreq-getpost"),
]
