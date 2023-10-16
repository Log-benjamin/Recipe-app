class RecipeFood < ApplicationRecord
  validates :quantity, presence: { message: "can't be zero" }, numericality: { greater_than: 0 }

  belongs_to :recipe
  belongs_to :food
end
