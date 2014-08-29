class OrderMailer < ActionMailer::Base

  default from:  "\"СМАРТКУБ\" <noreply@smartbox.ua>"

  def customer_notification(order)
    @order = order
    mail(:to => order.email,
         :subject => "Заявка на Смарткуб")
  end

  def manager_notification(order)
    @order = order
    mail(:to => "store@smartbox.ua",
         :subject => "Нове замовлення Смарткуб")
  end

end
