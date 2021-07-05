from web_project.settings import TEMPLATES
from django.http import HttpResponse
from django.shortcuts import render
from products.models import Product
def home(request):
    context ={
        'products':Product.objects.all()
    }
    return render(request,"home.html",context)

def about(request):
    return render(request,'about.html')

def pharmacology(request):
    return render(request,'pharmacology.html')