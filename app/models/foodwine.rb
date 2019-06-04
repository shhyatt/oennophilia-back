class Foodwine < ApplicationRecord
  belongs_to :food
  belongs_to :wine
  has_many :reviews
  has_many :users, through: :reviews
end
