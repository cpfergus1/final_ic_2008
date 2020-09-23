require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test

  def test_pantry_has_attributes
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient1.name
    ingredient1.unit
    ingredient1.calories
  end
end
