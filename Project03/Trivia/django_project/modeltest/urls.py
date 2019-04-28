from django.urls import path
from . import views

# routes from /e/macid/testmodel/
urlpatterns = [
    path('getperson/' , views.getperson_view , name = "modeltest-getperson_view"),
    path('addperson/' , views.addperson_view , name = "modeltest-addperson_view")
]
