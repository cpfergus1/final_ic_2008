require 'minitest/autorun'
require 'minitest/pride'
require './lib/cook_book'
require './lib/recipe'

class CookBookTest < Minitest::Test

def test_cook_book_has_attributes
  cookbook = CookBook.new
  assert_equal [], cookbook.recipes
end

# def test_cookbook_can_add_recipe
# recipe1 = Recipe.new("Mac and Cheese")
# recipe2 = Recipe.new("Cheese Burger")
# cookbook = CookBook.new
# cookbook.add_recipe(recipe1)
# cookbook.add_recipe(recipe2)
# assert_equal [recipe1, recipe2], cookbook.recipes
# end
end
