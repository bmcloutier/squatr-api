class Review < ApplicationRecord
  belongs_to :reservation
  validates :rating, presence: true, inclusion: { in: 1..5 }
end
