class RecipeFood < ApplicationRecord
  validates :quantity, presence: { message: 'must be provided' }
  validates :quantity, numericality: { greater_than: 0, message: 'must be greater than zero' }
  validates :food, uniqueness: { scope: :recipe, message: 'already exists' }

  belongs_to :recipe
  belongs_to :food

  def to_s
    "#{recipe.name}/#{food.name}"
  end
end
