class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer
      t.datetime :buy_date

      t.timestamps
    end
    add_index :orders, :customer_id
  end
end
