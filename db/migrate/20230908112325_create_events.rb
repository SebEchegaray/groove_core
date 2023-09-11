class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events, if_not_exists: true do |t|
      t.string :title
      t.text :description
      t.string :dj_lineup
      t.date :event_date
      t.string :location
      t.decimal :ticket_price

      t.timestamps
    end
  end
end
