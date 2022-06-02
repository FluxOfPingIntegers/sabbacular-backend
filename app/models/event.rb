class Event < ApplicationRecord

belongs_to :day
has_many :trips
end