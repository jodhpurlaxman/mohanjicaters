from django import forms
from django.contrib.auth.models import User, Group
import django_filters
from category.models import Category1
from .models import Product, Brands



class UserFilter(django_filters.FilterSet):
    category = django_filters.ModelMultipleChoiceFilter(queryset=Category1.objects.all(),
                                                        widget=forms.CheckboxSelectMultiple)
    brands = django_filters.ModelMultipleChoiceFilter(queryset=Brands.objects.all(),
                                                      widget=forms.CheckboxSelectMultiple)

    #price = django_filters.ModelMultipleChoiceFilter(queryset=Product.objects.filter('price' >= '200'))
    #price = RangeFilter()
    #price = django_filters.ModelMultipleChoiceFilter(queryset=Product.objects.price())

    class Meta:
        model = Product
        fields = ['title', 'brands', 'price']

