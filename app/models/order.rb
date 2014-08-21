class Order < ActiveRecord::Base
	validates_presence_of :name, :phone, :email
end
