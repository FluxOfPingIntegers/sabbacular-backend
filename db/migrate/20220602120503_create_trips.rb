class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.references :day, null: false, foreign_key: true
      t.datetime :time_begin
      t.string :start_location
      t.string :transportation
      t.decimal :cost
      t.string :duration
      t.string :end_location

      t.timestamps
    end
  end
end
