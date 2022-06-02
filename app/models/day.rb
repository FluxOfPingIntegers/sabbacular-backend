class Day < ApplicationRecord

belongs_to :vacation
has_many :trips
has_many :events

end