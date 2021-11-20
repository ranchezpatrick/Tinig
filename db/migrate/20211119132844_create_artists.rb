class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.text :name
      t.datetime :formed_at
      t.boolean :verified
      t.text :permalink
      t.text :bio
      t.text :avatr_url
      t.text :cover_photo_url
      t.datetime :formed_at
      t.datetime :verified_at

      t.timestamps
    end
  end
end
