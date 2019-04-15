class AddMediaTypeToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :media_type, :string
  end
end
