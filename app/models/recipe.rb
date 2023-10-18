class Recipe < ApplicationRecord
  validates :name, :preparation_time, :cooking_time, :description, presence: { message: 'must be provided' }
  validates :name, format: { with: /\A[a-z ,.'-]+\z/i, message: 'provide a valid `%<attribute>`' }
  validates :name, length: { minimum: 3, too_short: 'must be at least `%<count>` characters' }
  validates :name, length: { maximum: 150, too_long: "can't excee `%<count>` characters" }
  validates_each :preparation_time, :cooking_time do |record, attr, value|
    record.errors.add(attr, 'must be time') unless value.acts_like?(:time)
    record.errors.add(attr, 'must be greater than 0 minutes') unless value.min.positive? || value.hour.positive?
    record.errors.add(attr, 'must be less than 24 hours') unless value.hour < 24
  end

  belongs_to :user
  has_many :recipe_foods, inverse_of: :recipe
  has_many :foods, through: :recipe_foods
end
