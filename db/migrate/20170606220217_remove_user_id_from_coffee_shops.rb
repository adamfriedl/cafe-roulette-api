class RemoveUserIdFromCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    remove_column :coffee_shops, :user_id
  end
end
