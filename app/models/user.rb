class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :swaps, through: :requests
  has_one_attached :photo
  validates :first_name, :last_name, :location, presence: true

end
