
from django.contrib import admin
from django.urls import include, path

from dashboard.views import appointment_form, product_detail, product_list
from dashboard.views import contact
from dashboard import views


urlpatterns = [
    path('kbgadmin/', admin.site.urls),
    path('',views.home_page,name='index'),
    path('index',views.home_page,name='home'),
    path('gallery',views.blog_page,name='blog'),
    path('blog',views.news_page,name='news'),
    path('contactus',views.contactus_page,name='contactus'),
    path('appointment',views.appointment_page,name='appointment'),

    path('products/',views.product_list, name='product_list'),
    path('products/<int:product_id>/', views.product_detail, name='product_detail'),

    #form for get data
    path('save',views.appointment_form,name='save_appointment'),
    path('contact',views.contact,name='contact'),
    path('popup',views.popup,name='popup'),
    
    
]
