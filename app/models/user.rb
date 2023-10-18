class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: { message: 'must be provided' }
  validates :name, length: { minimum: 3, too_short: 'must be at least `%<count>` characters' }
  validates :name, length: { maximum: 65, too_long: "can't exceed `%<count>` characters" }
  validates :name, format: { with: /\A[a-z ,.'-]+\z/i, message: 'provide a valid name' }

  has_many :recipes, inverse_of: :user
  has_many :foods, inverse_of: :user
end
