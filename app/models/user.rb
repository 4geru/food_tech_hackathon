class User < ApplicationRecord
  has_many :materials, through: :baskets
  has_many :recipes, through: :user_recipes
end
