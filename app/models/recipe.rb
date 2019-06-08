class Recipe < ApplicationRecord
  has_many :materials, through: :recipe_materials
  belongs_to :user_recipe
end
