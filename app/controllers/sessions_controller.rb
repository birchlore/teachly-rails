class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/users/dashboard'
    else
      flash.now[:alert] = "Login failed"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_url
    flash[:alert] = "You are now logged out."
  end


end


