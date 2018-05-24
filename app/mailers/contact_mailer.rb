class ContactMailer < ApplicationMailer
def contact_mail(contact)    
  @contact = contact
 @contact_email = @contact.user_email
 mail to: "gooday46492000@yahoo.co.jp", subject: "本のリクエストが届きました！"  
  
end
end