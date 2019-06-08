class Recipe < ApplicationRecord
  has_many :materials, through: :recipe_materials
  has_many :user_recipe
end
