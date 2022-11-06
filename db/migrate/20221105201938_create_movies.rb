class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.integer :year
      t.float :length
      t.string :genre
      t.integer :director_id

      t.timestamps
    end
  end
end
