class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :strikers, foreign_key: :renter_id
  has_many :bookings, foreign_key: :client_id

  validates :username, presence: true, uniqueness: true
  validates :encrypted_password, length: { minimum: 5, maximum: 20 }
end
