class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.integer :met_id
      t.string :img_url
      t.string :title
      t.string :culture
      t.string :artist
      t.string :date
      t.string :description
      t.string :department

      t.timestamps
    end
  end
end
