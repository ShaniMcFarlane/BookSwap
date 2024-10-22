class Swap < ApplicationRecord
  belongs_to :request
  belongs_to :book
  belongs_to :user
  has_many :messages, dependent: :destroy
  enum status: { pending: 0, confirmed: 1, completed: 2 }
  validates :book_id, :request_id, presence: true
end
