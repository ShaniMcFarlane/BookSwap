class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :comment, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }
end
