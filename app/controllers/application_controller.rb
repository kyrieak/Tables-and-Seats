class ApplicationController < ActionController::Base
  protect_from_forgery :except => :render_error
  before_filter :set_app_name
  def set_app_name
    @app_name = "Remote Retro"
  end
  def render_error
    @exception = env["action_dispatch.exception"]
    @status_code = ActionDispatch::ExceptionWrapper.new(env, @exception).status_code
    render :error_page, status: @status_code, layout: true
  end
end
