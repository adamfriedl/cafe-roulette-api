class CreateCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    create_table :coffee_shops do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :website
      t.string :address
      t.string :food
      t.string :price_range

      t.timestamps
    end
  end
end
