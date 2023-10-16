class Recipe < ApplicationRecord
  validates :name, presence: { message: 'must be provided' }
  validates :name, length: { maximum: 150, message: "can't exceed 150 characters" }
  validates :preparation_time, presence: { message: "must be provided, can't be zero" },
                               numericality: { greater_than: '00:00:00' }
  validates :cooking_time, presence: { message: "must be provided, can't be zero" },
                           numericality: { greater_than: '00:00:00' }
  validates :description, presence: { message: 'must be provided' }

  belongs_to :user
  has_many :recipe_foods
  has_many :foods, through: :recipe_foods
end
