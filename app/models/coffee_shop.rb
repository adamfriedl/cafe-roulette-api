class CoffeeShop < ApplicationRecord
  belongs_to :user

  validates :name, :description, :website, :address, :food, :price_range, presence: true

end
