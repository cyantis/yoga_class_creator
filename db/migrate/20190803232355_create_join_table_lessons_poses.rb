class CreateJoinTableLessonsPoses < ActiveRecord::Migration[5.2]
  def change
    create_join_table :lessons, :poses do |t|
      # t.index [:lesson_id, :pose_id]
      # t.index [:pose_id, :lesson_id]
    end
  end
end
