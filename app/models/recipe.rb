class Recipe < ApplicationRecord
  validates :name, :preparation_time, :cooking_time, :description, presence: { message: 'must be provided' }
  validates :name, format: { with: /\A[a-z ,.'-]+\z/i, message: 'provided `%<value>s` is not a valid' },
                   allow_nil: false, allow_blank: false
  validates :name, length: { minimum: 3, too_short: 'must be at least %<count>s characters' }
  validates :name, length: { maximum: 150, too_long: "can't exceed %<count>s characters" }
  validates_each :preparation_time, :cooking_time do |record, attr, value|
    record.errors.add(attr, 'must be time') unless value.acts_like?(:time)
    record.errors.add(attr, 'must be greater than 0 minutes') unless value.min.positive? || value.hour.positive?
    record.errors.add(attr, 'must be less than 24 hours') unless value.hour < 24
  end

  belongs_to :user
  has_many :recipe_foods, inverse_of: :recipe
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
