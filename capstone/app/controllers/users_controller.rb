class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])

    if user.save 
      session[:user_id] = :user_id
      flash[:success] = "Success!"
      redirect_to '/'
    else
      flash[:warning] = "Either the email or the password wasn't recognized."
      redirect_to '/signup'
    end
  end
end
