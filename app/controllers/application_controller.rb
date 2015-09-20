class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_user
    redirect_to sign_in_path unless current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end

  helper_method :current_user
  # allows method to be called from the views
end
