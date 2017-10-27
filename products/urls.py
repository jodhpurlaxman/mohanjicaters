from django.conf.urls import url

from .views import product_list_view
#product_list_view
urlpatterns = [
    #url(r'^$', ProductListView.as_view(), name='list'),
    #url(r'^(?P<slug>[\w-]+)/$', ProductDetailSlugView.as_view(), name='detail'),
    url(r'^$', product_list_view, name='list'),#product_list_view
]

