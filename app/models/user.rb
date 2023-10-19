class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: { message: 'must be provided' }, allow_nil: false, allow_blank: false
  validates :name, length: { minimum: 3, too_short: 'must be at least `%<count>s` characters' }
  validates :name, length: { maximum: 65, too_long: "can't exceed `%<count>s` characters" }
  validates :name, format: { with: /\A[a-z ,.'-]+\z/i, message: 'provided `%<value>s` is not a valid' }

  has_many :recipes, inverse_of: :user
  has_many :foods, inverse_of: :user

  def to_s
    name
  end
end
