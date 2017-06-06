class CoffeeShopsController < ApplicationController

  def index
    render json: CoffeeShop.last
  end

  def new
  end

  def create
    # @coffee_shop = CoffeeShop.new(coffee_shop_params)
    # @coffee_shop.save

    @coffee_shop = CoffeeShop.create(coffee_shop_params)
    # if @coffee_shop.save
    #   # render json: CoffeeShop.last
    # end
  end



  private

  def coffee_shop_params
    params.require(:coffee_shop).permit(
    :name,
    :description,
    :website,
    :address,
    :food,
    :price_range
    )
  end

end
