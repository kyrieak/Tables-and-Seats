# Shared controller functionality
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_app_name

  http_basic_authenticate_with :name => "remote_retro",
    :password => "brimstone" unless Rails.env.test? || Rails.env.development?

  def set_app_name
    @app_name = "Remote Retro"
  end

  def remarks
  end
end
