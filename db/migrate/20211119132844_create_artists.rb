class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.text :name
      t.datetime :formed_at
      t.boolean :verified
      t.string :permalink
      t.text :bio
      t.string :avatr_url
      t.string :cover_photo_url
      t.datetime :verified_at

      t.timestamps
    end
  end
end
