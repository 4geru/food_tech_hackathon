# frozen_string_literal: true

json.user_name @user.name
json.user_id @user.id

json.materials do
  json.array! @user.baskets do |basket|
    json.name basket.material.name
  end
end

json.recipes do
  json.array! @user.user_recipes do |user_recipe|
    json.name user_recipe.recipe.name
  end
end