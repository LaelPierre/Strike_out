class AddColumnToStrikers < ActiveRecord::Migration[6.1]
  def change
    add_column :strikers, :address, :string
    add_column :strikers, :lat, :float
    add_column :strikers, :long, :float
  end
end
