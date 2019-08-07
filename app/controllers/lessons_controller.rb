class LessonsController < ApplicationController
  def index
    @teacher = Teacher.find_by(id: params[:teacher_id])
  end

  def show
    @lesson = Lesson.find(params[:id])
  end
end
