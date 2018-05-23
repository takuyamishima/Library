class ContactMailer < ApplicationMailer
def contact_mail(contact)    
  @contact = contact
 @contact_email = @contact.user_email
 mail to: @contact_email, subject: "本のリクエストが届きました！"  
  
end
end