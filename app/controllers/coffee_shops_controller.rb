class CoffeeShopsController < ApplicationController

  def index
    @coffee_shops = CoffeeShop.all
  end

  def new
  end

  def create
    @coffee_shop = CoffeeShop.new(coffee_shop_params)
    @coffee_shop.save
  end

  private

  def coffee_shop_params
    params.require(:coffee_shop).permit(
    :user_id,
    :name,
    :description,
    :website,
    :address,
    :food,
    :price_range
    )
  end
end
