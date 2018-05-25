# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180506071338) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "category_id", limit: 4, null: false
    t.integer "product_id",  limit: 4, null: false
  end

  add_index "categories_products", ["category_id", "product_id"], name: "index_categories_products_on_category_id_and_product_id", using: :btree
  add_index "categories_products", ["product_id", "category_id"], name: "index_categories_products_on_product_id_and_category_id", using: :btree

  create_table "category_projects", force: :cascade do |t|
    t.integer  "project_id",  limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "category_projects", ["category_id"], name: "fk_rails_6bb4b40057", using: :btree
  add_index "category_projects", ["project_id"], name: "fk_rails_fa4cd9f9f5", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "user_id",       limit: 4
    t.string   "color",         limit: 255
    t.datetime "purchase_date"
    t.decimal  "cost",                      precision: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["user_id"], name: "fk_rails_dee2631783", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "user_id",     limit: 4
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id", limit: 4
  end

  add_index "projects", ["user_id"], name: "fk_rails_b872a6760a", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "time"
    t.integer  "student_id", limit: 4
    t.integer  "teacher_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["student_id"], name: "fk_rails_4762ac6e1b", using: :btree
  add_index "subjects", ["teacher_id"], name: "fk_rails_cac7f2be05", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "age",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "category_projects", "categories"
  add_foreign_key "category_projects", "projects"
  add_foreign_key "products", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "subjects", "students"
  add_foreign_key "subjects", "teachers"
end
