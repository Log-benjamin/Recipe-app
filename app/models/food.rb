class Food < ApplicationRecord
  validates :name, presence: { message: 'must be provided' }, length: { minimum: 3, maximum: 50 }
  validates :measurement_unit, presence: { message: 'must be provided' }
  validates :price, presence: { message: "can't be zero" }, numericality: { greater_than: 0 }
  validates :quantity, presence: { message: "can't be zero" }, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
end
