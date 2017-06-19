class CoffeeShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :website, :address, :food, :price_range, :votes
end
