class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :day, null: false, foreign_key: true
      t.string :type
      t.date :date
      t.string :location
      t.datetime :time
      t.text :description
      t.string :duration
      t.decimal :cost

      t.timestamps
    end
  end
end
