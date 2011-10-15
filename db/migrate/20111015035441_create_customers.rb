class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :customer_class
      t.string :name
      t.string :email
      t.integer :mobile

      t.timestamps
    end
    add_index :customers, :customer_class_id
  end
end
