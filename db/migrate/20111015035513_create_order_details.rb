class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.references :order
      t.references :schedule
      t.decimal :adjustedprice

      t.timestamps
    end
    add_index :order_details, :order_id
    add_index :order_details, :schedule_id
  end
end
