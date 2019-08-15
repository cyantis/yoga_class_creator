class LessonsController < ApplicationController
  def index
    if logged_in?
      @teacher = Teacher.find_by(id: params[:teacher_id])
    else
      redirect_to root_path
    end
  end

  def show
    if logged_in?
      @lesson = Lesson.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def new
    if logged_in?
      @teacher = Teacher.find_by(id: params[:teacher_id])
      @lesson = Lesson.new
      @lesson.poses.build()
      @lesson.poses.build()
      @lesson.poses.build()
    else
      redirect_to root_path
    end
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
    if logged_in?
      @teacher = Teacher.find_by(id: params[:teacher_id])
      @lesson = Lesson.find(params[:id])
    else
      redirect_to root_path
    end
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
