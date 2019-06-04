class Api::V1::FoodsController < ApplicationController

  def index
    @foods = Food.all
    render json: @foods, status: :accepted
  end

end
