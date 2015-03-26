class AddEquipmentAlleyAccountToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :equipment_alley_account, :string
  end
end
