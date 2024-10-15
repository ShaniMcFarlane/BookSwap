class Book < ApplicationRecord
  belongs_to :user

  has_many :requests
  has_many :swaps

  validates :title, :author, :genre, :publish_date, presence: true
end
