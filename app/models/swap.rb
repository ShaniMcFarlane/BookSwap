class Swap < ApplicationRecord
  belongs_to :request
  belongs_to :book
  belongs_to :user
  has_many :messages, dependent: :destroy
  validates :book_id, :request_id, presence: true
end
