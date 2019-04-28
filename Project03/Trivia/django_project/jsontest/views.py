from django.http import JsonResponse
import json

# handle a request from
#    localhost:<portnum>/e/macid/testjson/
# takes a model from JsonExample.elm and returns one with the age inremented
# works with Json in the request and response
def json_view(request):
    # HttpRequest.POST automatically parses JSON into a QueryDict object
    reqDict = json.loads(request.body)
    name = reqDict.get("name","No one")
    age  = reqDict.get("age",0)
    err  = reqDict.get("error","")

    # the server can now examine and update the model
    if name == "No one" and age == 0:
        name = "Jimmy"
        age  = 50

    # JsonResponse automatically encodes a dictionary into a JSON response
    respDict = {}
    respDict['name'] = name
    respDict['age'] = age+1
    respDict['error'] = ""

    return JsonResponse(respDict)
