class Food < ApplicationRecord
  validates :name, :measurement_unit, :price, :quantity, presence: { message: 'must be provided' }
  validates :name, format: { with: /\A[a-z ,.'-]+\z/i, message: 'provide a valid `%<attribute>`' }
  validates :name, length: { minimum: 3, too_short: 'must be at least `%<count>` characters' }
  validates :name, length: { maximum: 65, too_long: "can't exceed `%<count>` characters" }
  validates :name, uniqueness: { scope: :user, message: '`%<attribute>` was added previously' }
  validates :measurement_unit, length: { minimum: 2, too_short: 'must be at least `%<count>` characters' }
  validates :measurement_unit, length: { maximum: 30, too_long: "can't exceed `%<count>` characters" }
  validates :measurement_unit, uniqueness: { message: '`%<attribute>` already exists' }
  validates :price, numericality: { greater_than: 0, message: 'must be greater than zero' }
  validates :quantity, numericality: { greater_than: 0, message: 'must be greater than zero' }

  belongs_to :user
  has_many :recipe_foods, inverse_of: :food
  has_many :recipes, through: :recipe_foods
end
