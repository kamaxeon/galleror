class AddUserToAlbum < ActiveRecord::Migration
  def change
    add_reference :albums, :user, index: true
  end
end
