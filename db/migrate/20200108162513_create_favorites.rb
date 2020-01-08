class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.string :img_urls
      t.string :title
      t.string :geography
      t.string :artist
      t.string :dates
      t.string :description
      t.string :department

      t.timestamps
    end
  end
end
