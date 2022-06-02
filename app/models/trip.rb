class Trip < ApplicationRecord

belongs_to :day
belongs_to :event
belongs_to :vacation, through: day

end