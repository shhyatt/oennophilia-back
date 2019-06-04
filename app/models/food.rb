class Food < ApplicationRecord
  has_many :foodwines
  has_many :wines, through: :foodwines
end
