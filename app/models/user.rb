class User < ApplicationRecord
  validates :username, length: {maximum: 20}
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_many :messages
end
