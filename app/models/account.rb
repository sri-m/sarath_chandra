class Account < ActiveRecord::Base
	belongs_to :customer, foreign_key: "customer_id"  #@account.find(1).customer
end
