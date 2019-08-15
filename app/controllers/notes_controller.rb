class NotesController < ApplicationController
  def new
    if logged_in?
      @teacher = Teacher.find_by(id: params[:teacher_id])
      @lesson = Lesson.find_by(id: params[:lesson_id])
      @note = Note.new
      @lesson.notes.build()
    else
      redirect_to root_path
    end
  end

  def create
    @note = Note.create(note_params)
    flash[:message] = "Note Taken!"
    redirect_to teacher_lesson_path(@note.lesson.teacher, @note.lesson)
  end


  def edit
    if logged_in?
      @teacher = Teacher.find_by(id: params[:teacher_id])
      @lesson = Lesson.find_by(id: params[:lesson_id])
      @note = Note.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    flash[:message] = "Note Updated!"
    redirect_to teacher_lesson_path(@note.lesson.teacher, @note.lesson)
  end

  def destroy
    @note = Note.find(params[:id])
    @lesson = Lesson.find_by(id: params[:lesson_id])
    @note.destroy
    flash[:message] = "Note Deleted!"
    redirect_to teacher_lesson_path(@lesson.teacher, @lesson)
  end

  private

  def note_params
    params.require(:note).permit(:content, :lesson_id)
  end
  
end
