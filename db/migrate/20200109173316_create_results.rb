class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :search, null: false, foreign_key: true
      t.boolean :sent

      t.timestamps
    end
  end
end
