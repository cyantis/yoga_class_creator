class LessonsController < ApplicationController
  before_action :require_login

  def index
    @teacher = Teacher.find_by(id: params[:teacher_id])
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @lesson = Lesson.new
    10.times { @lesson.poses.build() }
  end

  def create
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @lesson = Lesson.create(lesson_params)
    if @lesson.save
      flash[:message] = "Lesson Created!"
      redirect_to teacher_lesson_path(@teacher, @lesson)
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    flash[:message] = "Lesson Updated!"
    redirect_to teacher_lesson_path(@lesson.teacher, @lesson)
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:message] = "Lesson Deleted!"
    redirect_to teacher_lessons_path
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :teacher_id, :lesson_type, :playlist, poses_attributes: [:id, :name, :teacher_id])
  end

end
