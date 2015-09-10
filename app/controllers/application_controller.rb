class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_current_user

  private 
  def fetch_current_user
  	if session[:user_id].present?
  		@current_user = User.find_by :id => session[:user_id] #use .find_by as it will throw back nil rather than an error. .find will sometimes throw an error.
  		session[:user_id] = nil unless @current_user.present? # stops trying to log this person in. does
  	end
  end
end
