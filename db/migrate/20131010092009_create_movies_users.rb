class CreateMoviesUsers < ActiveRecord::Migration
  def change
    create_table :movies_users, :id => false do |t|
      t.references :movie, :user
    end

    add_index :movies_users, [:movie_id, :user_id],
      name: "movies_users_index",
      unique: true
  end
end
