class Food < ApplicationRecord
  validates :name, :measurement_unit, :price, :quantity, presence: { message: 'must be provided' }
  validates :name, format: { with: /\A[a-z ,.'-]+\z/i,
                             message: 'provided `%<value>s` is not a valid' },
                   allow_nil: false, allow_blank: false
  validates :name, length: { minimum: 3, too_short: 'must be at least %<count>s characters' }
  validates :name, length: { maximum: 65, too_long: "can't exceed %<count>s characters" }
  validates :name, uniqueness: { scope: :user, case_sensitive: false,
                                 message: 'provided `%<value>s` seems that it already exists' }
  validates :measurement_unit, length: { minimum: 2, too_short: 'must be at least %<count>s characters' }
  validates :measurement_unit, length: { maximum: 30, too_long: "can't exceed %<count>s characters" }
  validates :measurement_unit, uniqueness: { scope: %i[user name],
                                             message: 'provided `%<value>s` seems that it already exists' }
  validates :price, numericality: { greater_than: 0, message: 'must be greater than zero' }
  validates :quantity, numericality: { greater_than: 0, message: 'must be greater than zero' }

  belongs_to :user
  has_many :recipe_foods, inverse_of: :food, dependent: :destroy
  has_many :recipes, through: :recipe_foods

  def to_s
    name
  end
end
