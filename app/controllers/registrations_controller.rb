class RegistrationsController < ApplicationController
  def student
  	@my_name = "Sarath"
  	@name = "Srinivas"
  end

  def faculty
  	@name = "Srinivas"
  	@my_controller = params[:action]
  end
end
