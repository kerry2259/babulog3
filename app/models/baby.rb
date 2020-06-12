class Baby < ApplicationRecord
  has_many :user_babies
  has_many :users, through: :user_babies
  has_many :messages
  validates :name, presence: true, uniqueness: true
end
