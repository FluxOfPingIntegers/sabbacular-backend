class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :email, presence: true, uniqueness: true

  has_secure_password
  has_many :vacations
  has_many :days, through: :vacations
  has_many :trips, through: :days
  has_many :events, through: :days
end