class OrdersController < ApplicationController
	def create
    @order = Order.new(order_params)
    if @order.save && OrderMailer.customer_notification(@order).deliver && OrderMailer.manager_notification(@order).deliver
			flash[:success] = 'Дякуємо за Вашу заявку! Найближчим часом Вами Вам зателефонуємо.'
    else
      flash[:error] = 'Не вдалося відправити заявку. Перевірте, чи всі поля заповнені та спробуйте ще раз.'
    end
    redirect_to root_url
	end
	def order_params
    params.require(:order).permit(:name, :phone, :email)
  end
end
