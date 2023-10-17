class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  validates :name, presence: { message: 'must be provided' }
  validates :name, length: { maximum: 65, message: "can't exceed 65 characters" }

  has_many :recipes
  has_many :foods
end
