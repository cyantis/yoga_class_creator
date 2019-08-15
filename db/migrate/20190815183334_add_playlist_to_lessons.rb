class AddPlaylistToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :playlist, :string
  end
end
