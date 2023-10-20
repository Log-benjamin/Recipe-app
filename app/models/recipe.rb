class Recipe < ApplicationRecord
  validates :name, :preparation_time, :cooking_time, :description, presence: { message: 'must be provided' }
  validates :name, format: { with: /\A[a-z ,.'-]+\z/i, message: 'provided `%<value>s` is not a valid' },
                   allow_nil: false, allow_blank: false
  validates :name, length: { minimum: 3, too_short: 'must be at least %<count>s characters' }
  validates :name, length: { maximum: 150, too_long: "can't exceed %<count>s characters" }

  validates :preparation_time, numericality: { greater_than: 0, message: 'must be greater than zero' }
  validates :cooking_time, numericality: { greater_than: 0, message: 'must be greater than zero' }

  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods

  scope :is_public, -> { where(public: true) }

  def total_items
    recipe_foods.count
  end

  def total_price
    recipe_foods.sum do |rf|
      rf.quantity * rf.food.price
    end
  end
end
