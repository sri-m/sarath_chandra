module ApplicationHelper
	def self.my_time
		@time = Time.now.strftime("%H:%M:%S")
	end
	def self.my_date
		@date = Time.now.strftime("%d-%m-%Y")
	end
	DOB = "27-05-1980"
	Name = "M Srinivas S/0 M Durga Prasad"
end
