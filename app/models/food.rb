class Food < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :measurement_unit, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

  belongs_to :user
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
end
