class AddPicksToUser < ActiveRecord::Migration
  def change
  	add_column :users, :app_id, :integer
  	add_column :users, :movie_id, :integer
  	add_column :users, :album_id, :integer
  	add_column :users, :website_id, :integer
  end
end
