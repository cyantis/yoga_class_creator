class NotesController < ApplicationController
  def new
    @teacher = Teacher.find_by(id: params[:teacher_id])
    @lesson = Lesson.find_by(id: params[:lesson_id])
    @note = Note.new
    @lesson.notes.build()
  end

  def create
    @note = Note.create(note_params)
    redirect_to teacher_lesson_path(@note.lesson.teacher, @note.lesson)
  end


  def edit
    @note = Note.find(params[:id])
  end

  private

  def note_params
    params.require(:note).permit(:content, :lesson_id)

  end
end
