class RemoveGenreFromMovies < ActiveRecord::Migration[5.0]
  def up
    remove_index :movies, column: [:genre_id]
    remove_column :movies, :genre_id
  end

  def down
    add_reference :movies, :genre, index: true
  end
end
