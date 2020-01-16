class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.references :artwork, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true
      t.boolean :sent
      t.datetime :send_date_time

      t.timestamps
    end
  end
end
