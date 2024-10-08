class User < ApplicationRecord
  has_secure_password

  has_many :rooms
  has_many :reservations
  has_many :reviews, through: :reservations

  validates :email, presence: true, uniqueness: true
end
