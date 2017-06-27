class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string :title
      t.string :genre
      t.integer :year
      t.text :synopsis
      t.string :picture

      t.timestamps
    end
  end
end
