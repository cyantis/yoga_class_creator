class AddTeacherIdToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :teacher_id, :string
  end
end
