class Material < ApplicationRecord
  belongs_to :basket
  belongs_to :recipes_material
end
