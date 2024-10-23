class Message < ApplicationRecord
  belongs_to :user
  belongs_to :swap
  validates :content, presence: true
  # after_create_commit :broadcast_message

  # private

  # def broadcast_message
  #   broadcast_append_to "swap_#{swap.id}_messages",
  #                       partial: "messages/message",
  #                       locals: { message: self },
  #                       target: "messages"
  # end
end
