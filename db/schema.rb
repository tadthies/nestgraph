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

ActiveRecord::Schema.define(version: 20170723215526) do

  create_table "devices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "device_id"
    t.string "name"
    t.string "name_long"
    t.boolean "is_online"
    t.boolean "can_cool"
    t.boolean "can_heat"
    t.date "last_connection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float "internal_temp", limit: 24
    t.float "external_temp", limit: 24
    t.float "target_temp", limit: 24
    t.float "nest_temp_high", limit: 24
    t.float "nest_temp_low", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hvac_state"
    t.float "humidity", limit: 24
    t.string "name"
    t.string "device_id"
    t.string "time_to_target"
  end

end