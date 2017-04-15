class UserMailer < ApplicationMailer
  default from: 'your-email@example.com'

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'dianawallacedeveloper@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
  
  def welcome(user)
  @appname = "Bike Shop"
  mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
  end
  
  #def paid_success(user, product)
  #    @user = user
  #    @product = product
  #  @appname = "Bike Shop"  
  #  mail( :to => user.email,
  #        :subject => "Confirmation of Order and Payment from Bike Denver")
  # end
  
end
