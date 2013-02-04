class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_app_name
  def set_app_name
    @app_name = "Remote Retro"
  end
end
