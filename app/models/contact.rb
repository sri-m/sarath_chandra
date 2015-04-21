class Contact < ActiveRecord::Base
	#validation
	#associations
	#callbacks
	#queris
	validates :name, :email, :cell, :gender, :address, presence: true
	validates :email, format: { with: /[a-z0-9._]*(@){1}[a-z0-9]*(\.){1}[a-z]{2,}/,
    message: "Format is wrong" }
    validates :cell, length: { is: 10 }
    validates :address, length: { maximum: 200 }
    
    
end
