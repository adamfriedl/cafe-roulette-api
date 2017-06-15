class CoffeeShopsController < ApplicationController

  def index
    render json: CoffeeShop.all
  end

  def new
  end

  def create
    @coffee_shop = CoffeeShop.new(coffee_shop_params)
    if @coffee_shop.save
      render json: @coffee_shop, status: 201
    end
  end

  def show
    @coffee_shop = CoffeeShop.find(params[:id])
    render json: @coffee_shop
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
