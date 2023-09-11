class CreateShowcases < ActiveRecord::Migration[7.0]
  def change
    create_table :showcases do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :location_link
      t.string :dj_lineup

      t.timestamps
    end
  end
end
