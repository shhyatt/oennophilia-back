class Api::V1::ReviewsController < ApplicationController
  before_action :find_review, only: [:update, :destroy]
    def index
      @reviews = Review.all
      render json: @reviews
    end

    def update
      @review.update(review_params)
      if @review.save
        render json: @review, status: :accepted
      else
        render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def create
      @review = Review.new(review_params)
      if @review.save
        render json: @review, status: :accepted
      else
        render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def destroy
      @review.destroy
      render body: nil, status: :no_content
    end

    private

    def review_params
      params.permit(:foodwine_id, :user_id, :review, :rating)
    end

    def find_review
      @review = Review.find(params[:id])
    end
end
