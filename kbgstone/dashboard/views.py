
from django.shortcuts import render,redirect,get_object_or_404
from django.http import HttpResponse
from django.template import loader
from dashboard.models import Appointment,PopUpSubmission,ContactForm,Product,PopupImage,BlogPost
from django.utils import timezone
from django.core.mail import send_mail
from django.contrib import messages
from django.views.decorators.csrf import csrf_exempt

# Create your views here.
def home_page(request):
     image_obj = PopupImage.objects.first()

    # Pass the image_obj to the template context
     context = {'image_obj': image_obj}
     return render(request, 'index.html', context)
   

def blog_page(request):
   return render(request,'blog.html')

def news_page(request):
   blog_posts = BlogPost.objects.all()
   return render(request, 'news.html', {'blog_posts': blog_posts})
   

def contactus_page(request):
   return render(request,'contactus.html')

def appointment_page(request):
   return render(request,'appointment.html')

#Appointment Form
@csrf_exempt
def appointment_form(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        email = request.POST.get('email')
        phone = request.POST.get('phone')
        appointment_date = request.POST.get('return')
        appointment_time = request.POST.get('Time')
      
       
        if Appointment.objects.filter(appointment_date=appointment_date, appointment_time=appointment_time).exists():
            return render(request, 'booking_failed.html', {'message': 'This time slot is not available. Please choose another time.'})

        appointment = Appointment(
                name=name,
                email=email,
                phone=phone,
                appointment_date=appointment_date,
                appointment_time=appointment_time,
            )
        appointment.save()
        
        
        subject = 'Appointment Request Confirmation'
        message = f'Dear {name},\n\nThank you for booking an appointment with us! We are looking forward to meeting with you on {appointment_date} at {appointment_time} for your scheduled appointment.\n\nWe wanted to confirm the details of your appointment:\nAppointment Date:  {appointment_date}\nAppointment Time:  {appointment_time}\nDuration: 1 Hour\nLocation:Unit 6, 1003-1009 Canley Vale Road, Wetherill Park, NSW, Australia 2164\n\nPlease note that if you need to cancel or reschedule your appointment, we kindly ask that you provide us with at least 24 hours notice. This allows us to offer your appointment slot to other clients who may be on a waiting list.\nIf you have any questions or concerns regarding your appointment, please do not hesitate to contact us at [Mobile: +61 451 210 406]. We are always happy to help!\nThank you for choosing our business for your needs. We look forward to providing you with exceptional service and a great experience.\n\nBest regards,\nKBG STONE'
        from_email = 'info@kbgstone.com.au' 
        recipient_list =[email,]  
        send_mail(subject, message, from_email, recipient_list, fail_silently=False)

        return render(request, 'success.html', {'message': f'\nThank you {name} for booking an appointment with us! We are looking forward to meeting with you on {appointment_date} at {appointment_time} for your scheduled appointment. An email has been sent to you.'})

    return render(request, 'appointment.html')









# Contact Form
@csrf_exempt
def contact(request):
    if request.method == 'POST':
       
        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        message = request.POST.get('message')
        
        
        contact_form = ContactForm(name=name, email=email, subject=subject, message=message)
        
        
        contact_form.save()
        
          
        subject = 'Contact With KBG'
        message = f'Hi {name},\n\nThank you for contacting with us.We will Contact with you soon.\n\nBest regards,\nThe Appointment Team\nKBG STONE'
        from_email = 'info@kbgstone.com.au'  
        recipient_list =[email,]  
        send_mail(subject, message, from_email, recipient_list, fail_silently=False)

        return render(request, 'success.html', {'message': 'Your form has been submitted successfully! We will contact with you soon.'}) 
    else:
        return render(request, 'index.html')




#popup form
@csrf_exempt

def popup(request):
    if request.method == 'POST':
        
        name = request.POST.get('name')
        number = request.POST.get('number')
        email = request.POST.get('email')
        postcode = request.POST.get('postcode')

       
        submission = PopUpSubmission(name=name, number=number, email=email, postcode=postcode)
        submission.save()
        response = redirect('home')  
        response.set_cookie('pop_up_seen', 'true')
        return response

    else:
        
        if request.COOKIES.get('pop_up_seen'):
            
            return render(request, 'index.html')
        else:
            
            return render(request, 'index.html', {'show_popup': True})



    
@csrf_exempt
def product_list(request):
    products = Product.objects.all()
    return render(request, 'product_list.html', {'products': products})
@csrf_exempt
def product_detail(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    return render(request, 'product_detail.html', {'product': product})






