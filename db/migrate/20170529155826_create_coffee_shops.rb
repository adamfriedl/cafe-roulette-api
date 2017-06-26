class CreateCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    create_table :coffee_shops do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :website
      t.string :address
      t.boolean :food
      t.string :price_range
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
