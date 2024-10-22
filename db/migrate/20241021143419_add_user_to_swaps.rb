class AddUserToSwaps < ActiveRecord::Migration[7.2]
  def change
    add_reference :swaps, :user, null: false, foreign_key: true
  end
end
