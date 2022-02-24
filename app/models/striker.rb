class Striker < ApplicationRecord
  belongs_to :renter, class_name: 'User', foreign_key: :renter_id
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :description, :price, :war_tag, presence: true
  validates :war_tag, uniqueness: true

  has_many_attached :photos
  validates :photos, presence: true
end
