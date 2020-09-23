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

  def date
    Time.now.strftime('%m-%d-%y')
  end

  def summary
    summary = []
    @recipes.each do |recipe|
      recipe_hash = Hash.new(0)
      recipe_hash[:name] = recipe.name
      recipe_hash[:details] =  
end
