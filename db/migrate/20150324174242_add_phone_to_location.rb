class AddPhoneToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :phone, :string, limit: 10
  end
end
