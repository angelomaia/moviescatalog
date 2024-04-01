class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :country
      t.date :birth
      t.string :fav_gender

      t.timestamps
    end
  end
end
