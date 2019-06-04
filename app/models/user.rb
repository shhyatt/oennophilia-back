class User < ApplicationRecord
  has_many :reviews
  has_many :foodwine, through: :reviews
  has_many :favorite_wines
end
