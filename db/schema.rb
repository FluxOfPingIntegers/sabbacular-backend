# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_02_121251) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.bigint "vacation_id", null: false
    t.date "date"
    t.decimal "budget"
    t.string "location"
    t.string "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vacation_id"], name: "index_days_on_vacation_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "day_id", null: false
    t.string "type"
    t.date "date"
    t.string "location"
    t.datetime "time"
    t.text "description"
    t.string "duration"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_events_on_day_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "day_id", null: false
    t.datetime "time_begin"
    t.string "start_location"
    t.string "transportation"
    t.decimal "cost"
    t.string "duration"
    t.string "end_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id", null: false
    t.index ["day_id"], name: "index_trips_on_day_id"
    t.index ["event_id"], name: "index_trips_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "secret_question"
    t.string "secret_answer"
    t.string "img"
    t.string "oauth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "date_begin"
    t.string "date_end"
    t.string "departure"
    t.string "return"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vacations_on_user_id"
  end

  add_foreign_key "days", "vacations"
  add_foreign_key "events", "days"
  add_foreign_key "trips", "days"
  add_foreign_key "trips", "events"
  add_foreign_key "vacations", "users"
end
