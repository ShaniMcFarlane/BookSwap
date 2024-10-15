class CreateSwaps < ActiveRecord::Migration[7.2]
  def change
    create_table :swaps do |t|
      t.references :request, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
