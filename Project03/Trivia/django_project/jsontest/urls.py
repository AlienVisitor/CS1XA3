from django.urls import path
from . import views

# routes from /e/macid/testjson/
urlpatterns = [
    path('', views.json_view , name = "jsontests-json_view" ),
]
