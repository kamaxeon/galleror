class RenameScoreToAlbums < ActiveRecord::Migration
  def up
    rename_column :albums, :score, :rating
  end

  def down
    rename_column :albums, :rating, :score
  end
end
