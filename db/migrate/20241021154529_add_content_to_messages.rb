class AddContentToMessages < ActiveRecord::Migration[7.2]
  def change
    add_column :messages, :content, :string
  end
end
