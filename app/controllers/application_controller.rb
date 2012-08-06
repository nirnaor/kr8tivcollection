class ApplicationController < ActionController::Base
  protect_from_forgery
  #before_filter :set_locale

  #def set_locale
    #i18n.locale = params[:locale] if params[:locale].present?
  #end

  #rescue_from CanCan::AccessDenied do |exception|

    #flash[:alert] = "Access denied bitch!"
    #redirect_to root_url


  #end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    
    helper_method :current_user

end
