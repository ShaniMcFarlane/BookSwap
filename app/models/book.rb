class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :requests
  has_many :swaps

  validates :title, :author, :genre, :publish_date, presence: true

  include PgSearch::Model

  pg_search_scope :search_books,
  against: [ :title, :author, :genre, :publish_date ],
  using: {
    tsearch: { prefix: true }
  }

end
