class CreateSongsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :rank
    end
  end
end
