class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :movie
      t.references :hall
      t.decimal :price
      t.datetime :BeginDateTime
      t.datetime :EndDateTime

      t.timestamps
    end
  end
end
