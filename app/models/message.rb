class Message < ApplicationRecord
  belongs_to :user
  belongs_to :swap
  validates :content, presence: true
end
