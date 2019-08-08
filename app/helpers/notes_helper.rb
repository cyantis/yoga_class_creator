module NotesHelper
  def note_date(note)
    note.created_at.strftime("%b %d, %Y")
  end
end
