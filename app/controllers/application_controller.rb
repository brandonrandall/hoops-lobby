class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_uri

  def current_uri
    @current_uri = request.env['PATH_INFO']
  end

end
