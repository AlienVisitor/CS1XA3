from django.http import JsonResponse, HttpResponse
from .models import Person
import json

def getperson_view(request):
    person = Person.objects.first()

    return JsonResponse({ "name" : person.name, "age" : person.age , "error" : "" })

def addperson_view(request):
    person = json.loads(request.body)
    rname  = person.get("name","")
    rage   = person.get("age",0)

    if rname != "":
        newperson = Person(name = rname, age = rage)
        newperson.save()      # needed to actually add to database
        return HttpResponse("Success")

    return HttpResponse("Failure")
