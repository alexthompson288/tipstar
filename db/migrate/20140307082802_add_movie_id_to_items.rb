class AddMovieIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :movie_id, :integer
  end
end
