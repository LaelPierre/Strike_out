class Striker < ApplicationRecord
  belongs_to :renter, class_name: 'User', foreign_key: :renter_id
end
