class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.text :name
      t.boolean :released
      t.datetime :released_at
      t.text :cover_art_url
      t.time :length
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
