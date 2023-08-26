class RemovePhotoUrlFromLists < ActiveRecord::Migration[7.0]
  def change
    remove_column :lists, :photo_url, :string
  end
end
