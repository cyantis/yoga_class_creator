class RemoveTeacherIdFromPoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :poses, :teacher_id
  end
end
