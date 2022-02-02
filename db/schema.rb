# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_30_120805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string "medal_name"
    t.bigint "total_medals"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id"
    t.index ["player_id"], name: "index_achievements_on_player_id"
  end

  create_table "appoinmentdetails", force: :cascade do |t|
    t.date "appoinment_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "doctor_id"
    t.integer "player_id"
    t.index ["doctor_id"], name: "index_appoinmentdetails_on_doctor_id"
    t.index ["player_id"], name: "index_appoinmentdetails_on_player_id"
  end

  create_table "appoinmentinfos", force: :cascade do |t|
    t.date "appoinmentinfo"
    t.string "doctor_name"
    t.string "player_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id"
    t.integer "doctor_id"
    t.index ["doctor_id"], name: "index_appoinmentinfos_on_doctor_id"
    t.index ["player_id"], name: "index_appoinmentinfos_on_player_id"
  end

  create_table "appoinments", force: :cascade do |t|
    t.datetime "appoinment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "physician_id"
    t.integer "players_id"
    t.index ["physician_id"], name: "index_appoinments_on_physician_id"
    t.index ["players_id"], name: "index_appoinments_on_players_id"
  end

  create_table "calculates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calculatorrs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coach_details", force: :cascade do |t|
    t.string "name"
    t.string "sport"
    t.string "country"
    t.string "email"
    t.bigint "age"
    t.bigint "sport_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_coach_details_on_sport_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.string "sports"
    t.string "country"
    t.string "email"
    t.bigint "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coachinfos", force: :cascade do |t|
    t.string "name"
    t.string "sportname"
    t.bigint "age"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sport_id"
    t.index ["sport_id"], name: "index_coachinfos_on_sport_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "states"
    t.string "city"
    t.string "email"
    t.bigint "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sport_id"
    t.integer "achievement_id"
    t.date "dob"
    t.integer "gender_id"
    t.boolean "gender_type"
    t.integer "genders_id"
    t.string "radiobutton"
    t.string "sport_name"
    t.index ["achievement_id"], name: "index_players_on_achievement_id"
    t.index ["genders_id"], name: "index_players_on_genders_id"
    t.index ["sport_id"], name: "index_players_on_sport_id"
    t.index ["sport_name"], name: "index_players_on_sport_name"
  end

  create_table "positions", force: :cascade do |t|
    t.string "Position_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.string "equipments"
    t.bigint "players"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "confirm_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "coach_details", "sports"
end
