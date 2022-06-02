class AddEventToTrips < ActiveRecord::Migration[7.0]
  def change
    add_reference :trips, :event, null: false, foreign_key: true
  end
end
