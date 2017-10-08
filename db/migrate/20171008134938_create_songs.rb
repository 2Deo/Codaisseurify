class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :album
      artist_id :artist
      t.integer :year

      t.timestamps
    end
  end
end
