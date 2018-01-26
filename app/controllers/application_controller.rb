class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_uri, :current_user

  def current_uri
    @current_uri = request.env['PATH_INFO']
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
