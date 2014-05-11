class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :director_id

      t.timestamps
    end
  end
end
