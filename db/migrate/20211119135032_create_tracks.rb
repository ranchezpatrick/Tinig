class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :url 
      t.text :name 
      t.text :credits
      t.boolean :available

      t.timestamps
    end
  end
end
