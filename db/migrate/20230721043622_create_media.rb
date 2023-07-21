class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.string :file_type
      t.string :file_path
      t.string :title
      t.text :description
      t.string :location_link
      t.date :event_date
      t.decimal :event_ticket_price, precision: 10, scale: 2
      t.references :mediable, polymorphic: true

      t.timestamps
    end
  end
end
