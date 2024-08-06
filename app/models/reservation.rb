class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :reviews

  validates :start_date, :end_date, presence: true
end
