class AddLessonTypeToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :lesson_type, :string
  end
end
