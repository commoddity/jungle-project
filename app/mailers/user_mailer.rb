class UserMailer < ApplicationMailer
  default from: "no-reply@junglist.com"

  def order_placed_email (order, user)
    @order = order
    @user = user
    mail(to: user.email, subject: "Junglist.com - Order Placed: ##{order.id}")
  end

end
