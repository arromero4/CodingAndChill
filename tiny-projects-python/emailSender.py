"""
App that helps you to send an email
go over to our gmail account and setup 2 factor authentication 
generate app password
create a function to send the mail

"""

from email.message import EmailMessage
import ssl
import smtplib

email_sender = 'arromero0408@gmail.com'
email_password = ''
email_receiver = 'arromero0408@gmail.com'

subject = 'Practice coding'
body = """You need to practice if you want to improve"""

em = EmailMessage()
em['From'] = email_sender
em['To'] = email_receiver
em['subject'] = subject
em.set_content(body)

context = ssl.create_default_context()

with smtplib.SMTP_SSL( 'smtp.gmail.com' , 465, context=context) as smtp:
    smtp.login(email_sender, email_password)
    smtp.sendmail(email_sender, email_receiver, em.as_string())