class Food < ApplicationRecord
  validates :name, presence: { message: 'must be provided' }
  validates :name, length: { minimum: 3, maximum: 65, message: "at least 3 characters and can't exceed 65 characters" }
  validates :measurement_unit, presence: { message: 'must be provided' }
  validates :measurement_unit,
            length: { minimum: 3, maximum: 30, message: "at least 3 characters and can't exceed 30 characters" }
  validates :price, presence: { message: "can't be zero" }, numericality: { greater_than: 0 }
  validates :quantity, presence: { message: "can't be zero" }, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
end
