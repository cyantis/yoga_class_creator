class SessionsController < ApplicationController
  def new
  end

  def create
    @teacher = Teacher.find_by(username: params[:teacher][:username])
      if @teacher && @teacher.authenticate(params[:teacher][:password])
        session[:user_id] = @teacher.id
        flash[:message] = "Welcome, #{@teacher.username.capitalize}!"
        redirect_to teacher_lessons_path(@teacher)
      else
        flash[:message] = "Username or password is incorrect. Please, try again."
        render :new
      end
    end

  def destroy
    session.delete :user_id
    flash[:message] = "Logout successful!"
    redirect_to root_path
  end

end
