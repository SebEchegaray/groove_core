class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :description
      t.string :genre
      t.string :duration
      t.string :artist
      t.text :soundcloud_embed_code

      t.timestamps
    end
  end
end
