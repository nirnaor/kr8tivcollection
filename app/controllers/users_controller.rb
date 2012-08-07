class UsersController < ApplicationController
  before_filter :authenticate
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thanks for signing up!!"
    else
      render "new"
    end
  end

protected
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "david" && password == "barak"
    end
  end   
end
