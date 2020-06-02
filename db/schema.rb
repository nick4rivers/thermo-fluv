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

ActiveRecord::Schema.define(version: 2020_06_02_224520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data", force: :cascade do |t|
    t.datetime "date_time"
    t.float "temperature"
    t.bigint "deployment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deployment_id"], name: "index_data_on_deployment_id"
  end

  create_table "deployments", force: :cascade do |t|
    t.text "deploy_notes"
    t.date "deploy_date"
    t.time "deploy_time"
    t.string "retrieve_status"
    t.text "retrieve_notes"
    t.date "retrieve_date"
    t.time "retrieve_time"
    t.bigint "site_id"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_deployments_on_site_id"
    t.index ["unit_id"], name: "index_deployments_on_unit_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.index ["project_id"], name: "index_sites_on_project_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "model"
    t.string "brand"
    t.string "url"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "serial"
    t.string "status"
    t.bigint "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_units_on_type_id"
  end

  add_foreign_key "data", "deployments"
  add_foreign_key "deployments", "sites"
  add_foreign_key "deployments", "units"
  add_foreign_key "sites", "projects"
  add_foreign_key "units", "types"
end
