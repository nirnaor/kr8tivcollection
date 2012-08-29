class SessionsController < ApplicationController
 def new
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_url, notice: "logged out"
  end

  def create
    #require 'debugger'
    #debugger
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now.alert = "Email or password is invalid!!!"
      render "new"
    end
    
  end
end
