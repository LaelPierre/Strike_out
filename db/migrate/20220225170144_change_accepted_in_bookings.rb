class ChangeAcceptedInBookings < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :accepted, :status
  end
end
