class ContactMailer < ApplicationMailer
  def contact(contact_params)
    @subject = contact_params["subject"]
    @sender_name = contact_params["name"]
    @sender_mail = contact_params["email"]
    @message = contact_params["message"]

    mail(to: "larsbohm@gmail.com", subject: "Contact from datene.nl - #{@subject}")
  end
end