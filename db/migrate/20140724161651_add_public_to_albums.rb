class AddPublicToAlbums < ActiveRecord::Migration
  def up
    add_column :albums, :public, :boolean
    change_column :albums, :title, :string, limit: 50
  end

  def down
    change_column :albums, :title, :string, :limit => nil
    remove_column :albums, :public
  end
end
