class Api::V1::WinesController < ApplicationController
  before_action :find_wine, only: [:update]
    def index
      @wines = Wine.all
      render json: @wines
    end
end
