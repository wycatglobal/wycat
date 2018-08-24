class AddCoverImageToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :album_coverimage, :string
  end
end
