class LessonsController < ApplicationController
  def index
    @teacher = Teacher.find_by(id: params[:teacher_id])
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @lesson = Lesson.new
    @lesson.poses.build()
    @lesson.poses.build()
    @lesson.poses.build()
  end

  def create
    @lesson = Lesson.create(lesson_params)
    redirect_to teacher_lesson_path(@lesson.teacher, @lesson)
  end

  def edit
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    redirect_to teacher_lesson_path(@lesson.teacher, @lesson)
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :teacher_id, :lesson_type, poses_attributes: [:id, :name, :teacher_id])
  end

end
