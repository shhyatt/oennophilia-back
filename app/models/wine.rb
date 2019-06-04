class Wine < ApplicationRecord
  has_many :foodwines
  has_many :reviews, through: :foodwines
  has_many :foods, through: :foodwines
  has_many :favorite_wines
  has_many :users, through: :favorite_wines
end
