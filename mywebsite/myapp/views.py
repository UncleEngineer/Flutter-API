from django.shortcuts import render
from django.http import HttpResponse, JsonResponse

def Home(request):
    return HttpResponse('<h1>Hello World</h1>')

def APIExample(request):
    data = {'message':'Hello World'}
    return JsonResponse(data=data)
