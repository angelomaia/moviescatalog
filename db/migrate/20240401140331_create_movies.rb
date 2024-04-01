class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :synopsis
      t.string :country
      t.integer :length

      t.timestamps
    end
  end
end
