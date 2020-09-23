require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

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
end
