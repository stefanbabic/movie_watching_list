class AddFinishedOnToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :finished_on, :date
  end
end
