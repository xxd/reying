class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|
      t.integer :seats
      t.text :description

      t.timestamps
    end
  end
end
