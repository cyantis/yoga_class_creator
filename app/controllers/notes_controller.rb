class NotesController < ApplicationContoller
  def show
    binding.pry
    @note = Note.find_by()
  end
end
