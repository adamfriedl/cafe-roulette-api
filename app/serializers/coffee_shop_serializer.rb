class CoffeeShopSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :description, :website, :address, :food, :price_range
end
