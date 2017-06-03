class ChangeDataTypeForFoodField < ActiveRecord::Migration[5.0]
  def change
    change_column(:coffee_shops, :food, :boolean)
  end
end
