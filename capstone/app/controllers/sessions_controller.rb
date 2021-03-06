class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You are now successfully logged in!"
      redirect_to '/'
    else
      flash[:warning] = "That was either an invalid password or an invalid email."
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You are now logged out!"
    redirect_to '/'
  end
end
