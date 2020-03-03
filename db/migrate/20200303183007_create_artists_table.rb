class CreateArtistsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :year_started
      t.integer :number_of_albums
    end
  end
end
