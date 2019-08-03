class AddsTeachersIdToPoses < ActiveRecord::Migration[5.2]
  def change
    add_column :poses, :teacher_id, :integer
  end
end
