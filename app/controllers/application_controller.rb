class ApplicationController < ActionController::Base

  def current_user
    @teacher = Teacher.find_by_id(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end

  def require_login
    unless logged_in?
      flash[:message] = "You must be logged in to access this page."
      redirect_to root_path
    end
  end

end
