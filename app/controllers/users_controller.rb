class UsersController < ApplicationController

  def index
    respond_to do |f|
      f.json {render json: User.all}
    end
	end

end
