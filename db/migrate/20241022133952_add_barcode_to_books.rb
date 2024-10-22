class AddBarcodeToBooks < ActiveRecord::Migration[7.2]
  def change
    add_column :books, :barcode, :bigint
  end
end
