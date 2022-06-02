class Vacation < ApplicationRecord

belongs_to :user
has_many :days
has_many :trips, through: days
has_many :events, through: days

end