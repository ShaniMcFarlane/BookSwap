class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.references :book, null: false, foreign_key: true
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
