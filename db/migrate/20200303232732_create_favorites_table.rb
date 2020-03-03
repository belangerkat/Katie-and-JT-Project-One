class CreateFavoritesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.references : user
      t.references : genre
    end
  end
end
