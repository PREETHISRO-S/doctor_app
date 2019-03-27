class UsersController < ApplicationController
	before_action :authenticate_user!
  before_action :set_user, only: [:show,:destroy]

  def index
  	@users = Patient.all
  end

  def show
  	@activities = @user.activities
  end


  private
    def set_user
      @user = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :age, :dob, :language, :sex, :phone, :street, :city, :state, :zip)
    end
end
