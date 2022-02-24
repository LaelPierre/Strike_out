class RenameLatLongInStrikers < ActiveRecord::Migration[6.1]
  def change
    rename_column :strikers, :lat, :latitude
    rename_column :strikers, :long, :longitude
  end
end
