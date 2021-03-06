# encoding: UTF-8

class ApplicationController < ActionController::Base
  protect_from_forgery

  def not_logged_in(notice = nil)
    unless current_user
      session[:return_to] = request.url
      redirect_to new_session_path, notice: notice
      true
    end
  end

  include ApplicationHelper
end
