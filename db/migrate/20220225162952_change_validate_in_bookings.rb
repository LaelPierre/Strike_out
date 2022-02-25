class ChangeValidateInBookings < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :validate, :accepted
  end
end
