class ChangeColumnCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    change_column :coffee_shops, :food, :string, default: "none"
  end
end
