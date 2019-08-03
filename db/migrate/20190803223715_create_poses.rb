class CreatePoses < ActiveRecord::Migration[5.2]
  def change
    create_table :poses do |t|
      t.integer :lesson_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
