class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :app_id
      t.integer :movie_id
      t.integer :album_id
      t.integer :website_id

      t.timestamps
    end
  end
end
