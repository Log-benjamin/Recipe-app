class RecipeFood < ApplicationRecord
  validates :quantity, presence: true, numericality: { greater_than: 0 }

  belongs_to :recipe
  belongs_to :food
end
