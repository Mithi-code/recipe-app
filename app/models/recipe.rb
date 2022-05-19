class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_food

  def self.recipe_update_public(recipe_id)
    recipe = Recipe.find(recipe_id)
    recipe.update(public: !recipe.public)
    
  end
end
