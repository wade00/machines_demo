class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :stock_number
      t.string :year
      t.string :machine_make
      t.string :machine_model
      t.string :machine_type
      t.string :serial
      t.string :hours
      t.string :price
      t.string :location
      t.text :description

      t.timestamps null: false
    end
  end
end
