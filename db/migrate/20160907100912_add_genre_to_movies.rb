class AddGenreToMovies < ActiveRecord::Migration[5.0]
  def change
    add_reference :movies, :genre, foreign_key: true
  end
end
