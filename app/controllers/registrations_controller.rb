class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle successful user creation, e.g., redirect to a success page
      redirect_to root_path, notice: 'User was successfully created.'
    else
      # Handle validation errors, e.g., render the new form with error messages
      render :new
    end
  end
  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
