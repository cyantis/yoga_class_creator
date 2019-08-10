class NotesController < ApplicationController
  def edit
    @note = Note.find(params[:id])
  end
end
