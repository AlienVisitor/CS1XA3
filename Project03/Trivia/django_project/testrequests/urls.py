from django.urls import path
from . import views

# routes from localhost:<portnum>/e/macid/testreq/testget/?name=v1&age=v2
#             localhost:<portnum>/e/macid/testreq/testpost/

urlpatterns = [
    path('testget/', views.get_view , name = 'testrequests.get_view'),
    path('testpost/', views.post_view , name = 'testrequests.post_view'),
]
