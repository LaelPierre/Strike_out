class Booking < ApplicationRecord
  belongs_to :client, class_name: 'User', foreign_key: :client_id
  belongs_to :striker

  validates :start_date, :end_date, presence: true
end
