# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_22_235105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.string "profile_image"
    t.string "name", default: ""
    t.string "description", default: ""
    t.integer "privacy_type", default: 0
    t.string "viewed_by", default: [], array: true
    t.string "members", default: [], array: true
    t.string "features", default: [], array: true
    t.string "location"
    t.string "beacon"
    t.string "creator", default: ""
    t.string "admins", default: [], array: true
    t.string "ambassadors", default: [], array: true
    t.string "current_events", default: [], array: true
    t.string "past_events", default: [], array: true
    t.string "feed", default: [], array: true
    t.string "tags", default: [], array: true
    t.string "category"
    t.string "address", default: ""
    t.boolean "allow_member_post_to_feed", default: false
    t.boolean "allow_member_post_to_events", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end