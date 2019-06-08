class User < ApplicationRecord
  has_many :materials, through: :baskets
  has_many :baskets
  has_many :recipes, through: :user_recipes
  has_many :user_recipes
end
