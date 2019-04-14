class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :url
      t.string :explanation
      t.string :hdurl

      t.timestamps
    end
  end
end
