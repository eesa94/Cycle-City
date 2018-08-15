class UserMailer < ApplicationMailer
  default from: "info@cyclecity.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'ep.94@example.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Cycle City"
    mail(to: user.email,
          subject: "Welcome to #{@appname}")
  end

  def order_placed(user, order)
    @user = user
    @order = order
    @product = order.product
    mail(to: user.email,
         subject: 'Thank you for your purchase')
  end

end
