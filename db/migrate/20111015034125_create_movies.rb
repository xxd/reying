class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :actor
      t.string :director
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
