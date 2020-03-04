class CreateArtistsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.references :genre
    end
  end
end
