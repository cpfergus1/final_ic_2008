require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def test_recipe_has_attributes
    recipe1 = Recipe.new("Mac and Cheese")
    recipe1.name
    recipe1.ingredients_required
  end
# ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
# ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
# recipe1.add_ingredient(ingredient1, 2)
# recipe1.add_ingredient(ingredient1, 4)
# recipe1.add_ingredient(ingredient2, 8)
# recipe1.ingredients_required
# recipe1.ingredients


end
