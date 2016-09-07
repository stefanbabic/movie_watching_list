class AddKeywordsToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :keywords, :text
  end
end
