class CreateOderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :oder_details do |t|
      t.integer :item_id, null: false, default: ""
      t.integer :order_id, null: false, default: ""
      t.integer :quantity, null: false, default: ""
      t.integer :purchase_price, null: false, default: ""
      t.integer :product_status, null: false, default: ""

      t.timestamps
    end
  end
end
