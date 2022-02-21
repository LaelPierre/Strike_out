class Booking < ApplicationRecord
  belongs_to :client, class_name: 'User', foreign_key: :renter_id
  belongs_to :striker
end
