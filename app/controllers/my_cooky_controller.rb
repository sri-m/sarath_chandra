class MyCookyController < ApplicationController
  def set_cookie
  	cookies[:my_name] = "Srinivas"
  	cookies[:loc] = "Hyderabad"
  	#@name = "Sarath"
  end

  def show_cookie
  	@name = cookies[:my_name]
  	@loc = cookies[:loc]
  	#@name = "Kishore"
  end

  def delete_cookie
  	cookies.delete :my_name
  	cookies.delete :loc
  end
end
