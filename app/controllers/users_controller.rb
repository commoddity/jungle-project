class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    @user.email.downcase!
    
    @user.save

    if @user.save!
      flash[:notice] = "Account created successfully!"
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
      redirect_to '/signup'
    end
  end 

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
