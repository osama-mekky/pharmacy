from django.shortcuts import  get_object_or_404, render
from django.http import HttpResponse
from .models import Product
def products(request):
    context ={
        'products':Product.objects.all()
    }
    return render(request,'products/products.html',context)
def product(request, pro_id):
    context = {
        'pro':get_object_or_404(Product,pk=pro_id)
    }
    return render(request,'products/product.html',context) 

def search(request):
    return render(request,'products/search.html')