class AddGenderToMovie < ActiveRecord::Migration[7.1]
  def change
    add_reference :movies, :gender, null: false, foreign_key: true
  end
end
