class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.references :vacation, null: false, foreign_key: true
      t.date :date
      t.decimal :budget
      t.string :location
      t.string :hours

      t.timestamps
    end
  end
end
