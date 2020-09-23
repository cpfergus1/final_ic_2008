require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

class PantryTest < Minitest::Test

  def test_pantry_has_attributes
    pantry = Pantry.new
    expected = Hash.new(0)
    assert_equal expected, pantry.stock
  end


  def test_pantry_can_check_stock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    expected = Hash.new(0)
    assert_equal expected, pantry.stock
    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_pantry_can_stock_items
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    expected = Hash.new(0)
    assert_equal expected, pantry.stock
    assert_equal 0, pantry.stock_check(ingredient1)
    pantry.restock(ingredient1, 5)
    expected = 5
    assert_equal expected, pantry.stock_check(ingredient1)
    pantry.restock(ingredient1, 10)
    expected = 15
    assert_equal expected, pantry.stock_check(ingredient1)
    pantry.restock(ingredient2, 7)
    expected = 7
    assert_equal expected, pantry.stock_check(ingredient2)
  end

  def test_pantry_can_check_if_has_ingredients_for_recipe
    pantry = Pantry.new
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient2, 8)
    expected = Hash.new(0)
    assert_equal expected, pantry.stock
    assert_equal 0, pantry.stock_check(ingredient1)
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)
    assert_equal false, pantry.enough_ingredients_for?(recipe1)
    pantry.restock(ingredient2, 7)
    assert_equal false, pantry.enough_ingredients_for?(recipe1)
    pantry.restock(ingredient2, 1)
    assert_equal true, pantry.enough_ingredients_for?(recipe1)
  end
end
