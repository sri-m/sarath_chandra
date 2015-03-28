class ContactObserver < ActiveRecord::Observer
	observe Contact

	def after_save(contact)
		UserMailer.my_mails(contact).deliver
	end
end
