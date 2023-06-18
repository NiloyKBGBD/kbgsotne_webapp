from ckeditor.fields import models
from django.contrib import admin
from django.utils.html import format_html
from ckeditor.widgets import CKEditorWidget
from django.db import models
from .models import Appointment,PopUpSubmission,Product,PopupImage,BlogPost
from .models import ContactForm
# Register your models here.



admin.site.register(Appointment)
admin.site.register(ContactForm)
admin.site.register(PopUpSubmission)
admin.site.register(PopupImage)


class BlogPostAdmin(admin.ModelAdmin):
    formfield_overrides = {
        models.TextField: {'widget': CKEditorWidget},
    }
admin.site.register(BlogPost,BlogPostAdmin)


class ProductAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'image')

admin.site.register(Product, ProductAdmin)


