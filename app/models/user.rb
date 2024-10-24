class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :swaps
  has_many :messages
  has_one_attached :photo
  validates :first_name, :last_name, :location, presence: true

  has_many :requests_as_owner, through: :books, source: :requests
  has_many :swaps_as_owner, through: :books, source: :swaps

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def swapped_books_count
    swaps.count
  end
end
