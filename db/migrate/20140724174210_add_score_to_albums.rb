class AddScoreToAlbums < ActiveRecord::Migration
  def up
    add_column :albums, :score, :integer
  end

  def down
    change_column :albums, :title, :string, :limit => nil
    remove_column :albums, :score
  end
end
