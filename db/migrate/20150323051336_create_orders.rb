class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_id
      t.string :order_name
      t.string :order_price
      t.string :order_qty

      t.timestamps null: false
    end
  end
end
