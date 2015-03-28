class UserMailer < ApplicationMailer
	def my_mails(contact)
		@contact = contact
		mail(to: @contact.email, subject: "I received your mails")
	end
end
