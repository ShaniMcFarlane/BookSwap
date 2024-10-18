class Request < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_one :swap
  validates :user_id, :book_id, presence: true
end
