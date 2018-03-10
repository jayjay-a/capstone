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

ActiveRecord::Schema.define(version: 20180310033314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Projects", primary_key: "project_id", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "project_status_id"
    t.integer "project_type_id"
    t.date "project_start_date"
    t.date "project_end_date"
    t.date "bid_submit_date"
    t.decimal "bid_material_cost"
    t.string "bid_cost_of_labor_decimal"
    t.decimal "bid_cost_of_permits"
    t.decimal "bid_equipment_rental"
    t.string "bid_freight_decimal"
    t.decimal "tax_rate"
    t.decimal "bid_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "SubcontractorStatuses", primary_key: "subcontractor_status_id", force: :cascade do |t|
    t.string "subcontractor_status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "materiallists", primary_key: "material_list_id", force: :cascade do |t|
    t.integer "project_id"
    t.integer "material_id"
    t.decimal "unit_price"
    t.decimal "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", primary_key: "material_id", force: :cascade do |t|
    t.string "material_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projectnotes", primary_key: "project_note_id", force: :cascade do |t|
    t.integer "project_id"
    t.text "project_notes"
    t.date "project_note_date"
    t.string "note_owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projectstatuses", primary_key: "project_status_id", force: :cascade do |t|
    t.string "project_status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projecttypes", primary_key: "project_type_id", force: :cascade do |t|
    t.string "project_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentalequipments", primary_key: "rental_equipment_id", force: :cascade do |t|
    t.string "rental_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentallists", primary_key: "rental_list_id", force: :cascade do |t|
    t.integer "project_id"
    t.integer "rental_equipment_id"
    t.decimal "rental_price"
    t.string "cost_frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcontractors", primary_key: "subcontractor_id", force: :cascade do |t|
    t.integer "subcontractor_status_id"
    t.string "subcontractor_name"
    t.string "subcontractor_phone"
    t.string "subcontractor_email"
    t.string "company"
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
