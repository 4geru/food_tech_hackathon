# frozen_string_literal: true

json.material @material.name
json.material_id @material.id

json.recipes do
  json.array! @material.recipe_materials do |recipe_material|
    json.name recipe_material.recipe.name
    json.url recipe_material.recipe.url
  end
end