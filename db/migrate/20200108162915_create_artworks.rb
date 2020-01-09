class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
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
