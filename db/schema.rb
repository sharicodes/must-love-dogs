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

ActiveRecord::Schema.define(version: 2019_01_23_223029) do

  create_table "appointments", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "careservice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "caregiver_id"
    t.integer "service_id"
    t.index ["careservice_id"], name: "index_appointments_on_careservice_id"
    t.index ["dog_id"], name: "index_appointments_on_dog_id"
  end

  create_table "caregivers", force: :cascade do |t|
    t.string "name"
    t.string "neighborhood"
    t.string "bio"
    t.string "picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "careservices", force: :cascade do |t|
    t.integer "caregiver_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caregiver_id"], name: "index_careservices_on_caregiver_id"
    t.index ["service_id"], name: "index_careservices_on_service_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "size"
    t.string "vet_name"
    t.string "food_name"
    t.string "img_url"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "caregiver_id"
    t.integer "service_id"
    t.index ["user_id"], name: "index_dogs_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.integer "phone_number"
    t.string "neighborhood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "username"
    t.string "password_digest"
  end

end
