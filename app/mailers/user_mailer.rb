class UserMailer < ApplicationMailer
  default from: "dianawallaceart8@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'dianawallacedeveloper@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end
