class User < ApplicationRecord
  validates :name, presence: { message: 'must be provided' }
  validates :name, length: { maximum: 65, message: "can't exceed 65 characters" }

  has_many :recipes
  has_many :foods
end
