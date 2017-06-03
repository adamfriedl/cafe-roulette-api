class CoffeeShopsController < ApplicationController

  def index
    render json: CoffeeShop.all
  end

  def new
  end

  def create
    # @coffee_shop = CoffeeShop.new(coffee_shop_params)
    # @coffee_shop.save

    @coffee_shop = CoffeeShop.new(coffee_shop_params)
    if @coffee_shop.save
      redirect_to @coffee_shop, notice: 'Your recipe was sucessfully created.'
    else
      render 'new', notice: 'There was a problem creating your coffee shop.'
    end
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
