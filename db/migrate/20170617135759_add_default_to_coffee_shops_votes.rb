class AddDefaultToCoffeeShopsVotes < ActiveRecord::Migration[5.0]
  def change
    change_column :coffee_shops, :votes, :integer, default: 0
  end
end
