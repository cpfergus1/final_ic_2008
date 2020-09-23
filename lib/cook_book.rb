class CookBook
attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredients = []
    @recipes.each do |recipe|
      recipe.ingredients.each do |ingredient|
        ingredients << ingredient.name unless ingredients.include?(ingredient.name)
      end
    end
    ingredients
  end

  def highest_calorie_meal
    @recipes.max {|recipe| recipe.total_calories}
  end
end
