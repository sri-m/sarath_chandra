class Customer < ActiveRecord::Base
	has_one :account   #@Model_name.association => @customer.find(2).account
	has_many :orders   #@customer.orders => @customer.find(1).orders
end
