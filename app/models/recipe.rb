class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :preparation_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :cooking_time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :description, presence: true

  belongs_to :user
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
end
