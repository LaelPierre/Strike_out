class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :duration
      t.integer :price
      t.references :client, null: false, foreign_key: { to_table: :users }
      t.references :striker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
