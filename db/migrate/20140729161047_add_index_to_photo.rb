class AddIndexToPhoto < ActiveRecord::Migration
  def up
    change_column :photos, :album_id, :integer, index: true
  end

  def down
    change_column :photos, :album_id, :integer, index: false
  end
end
