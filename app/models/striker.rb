class Striker < ApplicationRecord
  belongs_to :renter, class_name: 'User', foreign_key: :renter_id

  validates :description, :price, :war_tag, presence: true
  validates :war_tag, uniqueness: true

  has_many_attached :photos
end
