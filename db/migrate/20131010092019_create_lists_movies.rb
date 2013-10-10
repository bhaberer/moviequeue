class CreateListsMovies < ActiveRecord::Migration
  def change
    create_table :lists_movies, :id => false do |t|
      t.references :list, :movie
    end

    add_index :lists_movies, [:list_id, :movie_id],
      name: "lists_movies_index",
      unique: true
  end
end
