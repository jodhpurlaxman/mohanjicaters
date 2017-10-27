from django.views.generic import TemplateView, ListView, FormView
from django.shortcuts import render
from .filters import UserFilter
from .models import Product
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


# class ProductListView(ListView):
#     template_name = "products/product_list.html"
# #
#
#     def get_context_data(self, *args, **kwargs):
#         context = super(ProductListView, self).get_context_data(*args, **kwargs)
#         print(context)
#         return context
# # #
# #     def get_queryset(self, *args, **kwargs):
# #         request = self.request.GET
# #         return Product.objects.all()

# def product_list_view(request):
#     product_list = Product.objects.all()
#     page = request.GET.get('page')
#     paginator = Paginator(product_list, 10)
#     try:
#         object_list = paginator.page(page)
#     except PageNotAnInteger:
#         # If page is not an integer, deliver first page.
#         object_list = paginator.page(1)
#     except EmptyPage:
#         # If page is out of range (e.g. 9999), deliver last page of results.
#         object_list = paginator.page(paginator.num_pages)
#     # user_filter = UserFilter(request.POST, queryset=product_list)
#     return render(request, 'products/product_list.html', {'object_list': object_list})#, 'user_filter': user_filter})

def product_list_view(request):
    product_list = Product.objects.all()
    user_filter = UserFilter(request.GET, queryset=product_list)
    return render(request, 'products/product_list.html', {'filter': user_filter})






# class GenerateReport(ListView):
#     template_name = 'products/product_list.html'
#
#     def get_queryset(self, *args, **kwargs):
#         request = self.request
#         return Product.objects.all()
#
# def product_list_view(request):
#     product_list = Product.objects.all()
#     page = request.GET.get('page')
#     paginator = Paginator(product_list, 10)
#     try:
#         object_list = paginator.page(page)
#     except PageNotAnInteger:
#         # If page is not an integer, deliver first page.
#         object_list = paginator.page(1)
#     except EmptyPage:
#         # If page is out of range (e.g. 9999), deliver last page of results.
#         object_list = paginator.page(paginator.num_pages)
#     return render(request, 'products/product_list.html', {'object_list': object_list})

