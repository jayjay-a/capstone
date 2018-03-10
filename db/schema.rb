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

ActiveRecord::Schema.define(version: 20180310021130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", primary_key: "assignment_id", force: :cascade do |t|
    t.integer "subcontractor_id"
    t.integer "task_id"
    t.integer "employee_id"
    t.date "assignment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_statuses", primary_key: "customer_status_id", force: :cascade do |t|
    t.string "customer_status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", primary_key: "customer_id", force: :cascade do |t|
    t.integer "state_id"
    t.integer "customer_status_id"
    t.string "customer_name"
    t.string "customer_branch"
    t.string "customer_address_1"
    t.string "customer_address_2"
    t.string "string"
    t.string "customer_rep_name_1"
    t.string "customer_rep_name_2"
    t.string "customer_rep_phone_1"
    t.string "customer_rep_phone_2"
    t.string "customer_rep_email_1"
    t.string "customer_rep_email_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string "user_privilege"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
