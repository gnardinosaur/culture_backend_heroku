class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.references :user, null: false, foreign_key: true
      t.string :department
      t.boolean :highlight
      t.string :dates
      t.integer :days
      t.integer :time

      t.timestamps
    end
  end
end
