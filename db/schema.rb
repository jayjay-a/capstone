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

ActiveRecord::Schema.define(version: 20180315205030) do

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
    t.string "customer_rep_name_1"
    t.string "customer_rep_name_2"
    t.string "customer_rep_phone_1"
    t.string "customer_rep_phone_2"
    t.string "customer_rep_email_1"
    t.string "customer_rep_email_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_statuses", primary_key: "employee_status_id", force: :cascade do |t|
    t.string "employee_status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_types", primary_key: "employee_type_id", force: :cascade do |t|
    t.string "employee_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", primary_key: "employee_id", force: :cascade do |t|
    t.integer "employee_status_id"
    t.integer "employee_type_id"
    t.integer "state_id"
    t.string "first_name"
    t.string "last_name"
    t.date "join_date"
    t.date "dismiss_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_notes", primary_key: "job_notes_id", force: :cascade do |t|
    t.integer "job_id"
    t.text "job_notes"
    t.string "job_notes_owner"
    t.date "job_notes_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_statuses", primary_key: "job_status_id", force: :cascade do |t|
    t.string "job_status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_types", primary_key: "job_type_id", force: :cascade do |t|
    t.string "job_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", primary_key: "job_id", force: :cascade do |t|
    t.integer "project_id"
    t.integer "job_type_id"
    t.integer "job_status_id"
    t.date "job_start_date"
    t.date "job_end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "material_lists", primary_key: "material_list_id", force: :cascade do |t|
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

  create_table "project_notes", primary_key: "project_note_id", force: :cascade do |t|
    t.integer "project_id"
    t.text "project_notes"
    t.date "project_note_date"
    t.string "note_owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_statuses", primary_key: "project_status_id", force: :cascade do |t|
    t.string "project_status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_types", primary_key: "project_type_id", force: :cascade do |t|
    t.string "project_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", primary_key: "project_id", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "project_status_id"
    t.integer "project_type_id"
    t.date "project_start_date"
    t.date "project_end_date"
    t.date "bid_submit_date"
    t.decimal "bid_material_cost"
    t.decimal "bid_cost_of_labor"
    t.decimal "bid_cost_of_permits"
    t.decimal "bid_equipment_rental"
    t.decimal "bid_freight"
    t.decimal "tax_rate"
    t.decimal "bid_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rental_equipments", primary_key: "rental_equipment_id", force: :cascade do |t|
    t.string "rental_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rental_lists", primary_key: "rental_list_id", force: :cascade do |t|
    t.integer "project_id"
    t.integer "rental_equipment_id"
    t.decimal "rental_price"
    t.string "cost_frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", primary_key: "state_id", force: :cascade do |t|
    t.string "state_name"
    t.string "state_abbrev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcontractor_statuses", primary_key: "subcontractor_status_id", force: :cascade do |t|
    t.string "subcontractor_status_description"
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

  create_table "task_notes", primary_key: "task_note_id", force: :cascade do |t|
    t.integer "task_id"
    t.text "task_notes"
    t.string "task_note_owner"
    t.date "task_note_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_statuses", primary_key: "task_status_id", force: :cascade do |t|
    t.string "task_status_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", primary_key: "task_id", force: :cascade do |t|
    t.integer "job_id"
    t.integer "task_status_id"
    t.date "task_start_date"
    t.date "task_end_date"
    t.string "task_description"
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
