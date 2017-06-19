class AddVotesToCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    add_column :coffee_shops, :votes, :integer
  end
end
