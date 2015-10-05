class RemovePathColumnInPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :path
  end
end
