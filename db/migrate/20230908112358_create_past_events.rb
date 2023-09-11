class CreatePastEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :past_events, if_not_exists: true do |t|
      t.references :event, null: false, foreign_key: true
      t.text :photos

      t.timestamps
    end
  end
end
