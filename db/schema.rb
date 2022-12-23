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

ActiveRecord::Schema[7.0].define(version: 2022_12_23_130527) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.string "website"
    t.string "target"
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_clients_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.string "target"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliverables", force: :cascade do |t|
    t.string "name"
    t.string "status", default: "pending"
    t.float "cost"
    t.text "description"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_deliverables_on_project_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_journeys", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "journey_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journey_id"], name: "index_project_journeys_on_journey_id"
    t.index ["project_id"], name: "index_project_journeys_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "overview"
    t.float "budget"
    t.string "status", default: "active"
    t.bigint "company_id", null: false
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["company_id"], name: "index_projects_on_company_id"
  end

  create_table "step_templates", force: :cascade do |t|
    t.bigint "step_id", null: false
    t.bigint "template_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["step_id"], name: "index_step_templates_on_step_id"
    t.index ["template_id"], name: "index_step_templates_on_template_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "status"
    t.bigint "journey_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journey_id"], name: "index_steps_on_journey_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "status", default: "pending"
    t.bigint "step_id", null: false
    t.bigint "deliverable_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deliverable_id"], name: "index_tickets_on_deliverable_id"
    t.index ["step_id"], name: "index_tickets_on_step_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clients", "companies"
  add_foreign_key "deliverables", "projects"
  add_foreign_key "project_journeys", "journeys"
  add_foreign_key "project_journeys", "projects"
  add_foreign_key "projects", "clients"
  add_foreign_key "projects", "companies"
  add_foreign_key "step_templates", "steps"
  add_foreign_key "step_templates", "templates"
  add_foreign_key "steps", "journeys"
  add_foreign_key "tickets", "deliverables"
  add_foreign_key "tickets", "steps"
  add_foreign_key "tickets", "users"
  add_foreign_key "users", "companies"
end
