class CreateStrikers < ActiveRecord::Migration[6.1]
  def change
    create_table :strikers do |t|
      t.string :war_tag
      t.text :description
      t.integer :price
      t.references :renter, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
