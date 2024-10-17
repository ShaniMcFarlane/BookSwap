class Message < ApplicationRecord
  belongs_to :user
  belongs_to :swap
end
