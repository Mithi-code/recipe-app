class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_food

  #  Shows the count of food for a user
  def self.total_food(user_id)
    count_food = Food.where(user_id: user_id).count
  end

  # Food value total count
  def self.food_money(user_id)
    food_value = Food.where(user_id: user_id).sum(:price)
  end
end
