class Material < ApplicationRecord
  has_many :baskets
  has_many :recipe_materials
end
