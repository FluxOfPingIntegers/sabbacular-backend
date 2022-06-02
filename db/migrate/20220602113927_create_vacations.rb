class CreateVacations < ActiveRecord::Migration[7.0]
  def change
    create_table :vacations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :date_begin
      t.string :date_end
      t.string :departure
      t.string :return
      t.string :location

      t.timestamps
    end
  end
end
