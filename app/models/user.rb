class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_babies
  has_many :babies, through: :user_babies
  has_many :messages
  validates :name, presence: true, uniqueness: true
end
