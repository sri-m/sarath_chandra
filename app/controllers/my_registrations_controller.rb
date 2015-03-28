class MyRegistrationsController < ApplicationController
  before_action :set_my_registration, only: [:show, :edit, :update, :destroy]

  # GET /my_registrations
  # GET /my_registrations.json
  def index
    @my_registrations = MyRegistration.all
  end

  # GET /my_registrations/1
  # GET /my_registrations/1.json
  def show
  end

  # GET /my_registrations/new
  def new
    @my_registration = MyRegistration.new
  end

  # GET /my_registrations/1/edit
  def edit
  end

  # POST /my_registrations
  # POST /my_registrations.json
  def create
    @my_registration = MyRegistration.new(my_registration_params)

    respond_to do |format|
      if @my_registration.save
        format.html { redirect_to @my_registration, notice: 'My registration was successfully created.' }
        format.json { render :show, status: :created, location: @my_registration }
      else
        format.html { render :new }
        format.json { render json: @my_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_registrations/1
  # PATCH/PUT /my_registrations/1.json
  def update
    respond_to do |format|
      if @my_registration.update(my_registration_params)
        format.html { redirect_to @my_registration, notice: 'My registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_registration }
      else
        format.html { render :edit }
        format.json { render json: @my_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_registrations/1
  # DELETE /my_registrations/1.json
  def destroy
    @my_registration.destroy
    respond_to do |format|
      format.html { redirect_to my_registrations_url, notice: 'My registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_registration
      @my_registration = MyRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_registration_params
      params.require(:my_registration).permit(:name, :email, :cell, :category, :gender, :subject)
    end
end
