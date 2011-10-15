class CreateCustomerClasses < ActiveRecord::Migration
  def change
    create_table :customer_classes do |t|
      t.string :name
      t.integer :discount
      t.boolean :is_active

      t.timestamps
    end
  end
end
