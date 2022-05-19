class RecipeFood < ApplicationRecord
  validates :name, presence: true

  belongs_to :recipe
  belongs_to :food
end
