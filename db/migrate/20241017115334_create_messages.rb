class CreateMessages < ActiveRecord::Migration[7.2]
  def change
    create_table :messages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :swap, null: false, foreign_key: true

      t.timestamps
    end
  end
end
