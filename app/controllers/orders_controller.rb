class OrdersController < ApplicationController
	def create
    @order = Order.new(order_params)
    if @order.save
			flash[:success] = 'Дякуємо за Вашу заявку! Найближчим часом Вами Вам зателефонуємо.'
    else
      flash[:error] = 'Не вдалося відправити заявку. Спробуйте ще раз.'
    end
    redirect_to root_path
	end
	def order_params
    params.require(:order).permit(:name, :phone, :email)
  end
end
