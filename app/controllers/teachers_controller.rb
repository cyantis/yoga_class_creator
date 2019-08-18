class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.create(teacher_params)
    if @teacher.save
      session[:user_id] =  @teacher.id
      flash[:message] = "Welcome, #{@teacher.username.capitalize}. Click on 'New Class' to create your first class!"
      redirect_to teacher_lessons_path(@teacher)
    else
      render :new
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:username, :email, :password, :password_confirmation)
  end
end
