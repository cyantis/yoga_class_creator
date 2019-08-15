class ApplicationController < ActionController::Base

  def current_user
    @teacher = Teacher.find_by_id(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end

end
