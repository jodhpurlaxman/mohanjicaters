from django.contrib.auth import authenticate, login, get_user_model
from django.http import HttpResponse
from django.shortcuts import render,redirect
from django.views.generic import ListView, DetailView

from .forms import ContactForm

from products.models import Product

class ProductFeaturedListView(ListView):
    template_name = "home_page1.html"

    def get_queryset(self, *args, **kwargs):
        request = self.request
        return Product.objects.all().featured()


class ProductFeaturedDetailView(DetailView):
    queryset = Product.objects.all().featured()
    template_name = "products/featured-detail.html"

    # def get_queryset(self, *args, **kwargs):
    #     request = self.request
    #     return Product.objects.featured()



class ProductListView(ListView):
    template_name = "home_page1.html"

    # def get_context_data(self, *args, **kwargs):
    #     context = super(ProductListView, self).get_context_data(*args, **kwargs)
    #     print(context)
    #     return context

    def get_queryset(self, *args, **kwargs):
        request = self.request
        return Product.objects.all()


def product_list_view(request):
    queryset = Product.objects.all()
    context = {
        'object_list': queryset
    }
    return render(request, "home_page1.html", context)

def home_page(request):
    # print(request.session.get("first_name", "Unknown"))
    # request.session['first_name']
    context = {
        "title":"Mohanjicaters",
        "content":" Coming Soon.",
    }
    return render(request, "home_page.html", context)

    product_list = Product.objects.all()
    context["product_list"] = product_list;

    if request.user.is_authenticated():
        context["premium_content"] = "YEAHHHHHH"
    return render(request, "home_page1.html", context)

def about_page(request):
    context = {
        "title":"About Page",
        "content":" Welcome to the about page."
    }
    return render(request, "base/about.html", context)

def contact_page(request):
    contact_form = ContactForm(request.POST or None)

    if contact_form.is_valid():
        print(contact_form.cleaned_data)
    # if request.method == "POST":
    #     #print(request.POST)
    #     print(request.POST.get('fullname'))
    #     print(request.POST.get('email'))
    #     print(request.POST.get('content'))
    return render(request, "contact/view.html", )


