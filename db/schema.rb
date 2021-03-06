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

ActiveRecord::Schema.define(version: 20151024110842) do

  create_table "managed_files", force: :cascade do |t|
    t.string   "managed_file_name",          limit: 255
    t.string   "managed_file_uri",           limit: 255
    t.string   "managed_file_mime",          limit: 255
    t.integer  "managed_file_size",          limit: 4
    t.integer  "managed_file_status",        limit: 4
    t.integer  "managed_file_timestamp",     limit: 4
    t.integer  "managed_file_time_to_leave", limit: 4
    t.integer  "managed_file_deleted",       limit: 4
    t.integer  "managed_file_parent_id",     limit: 4
    t.integer  "managed_file_user_id",       limit: 4
    t.integer  "managed_file_user_type",     limit: 4
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.binary   "managed_file_object",        limit: 16777215
  end

  create_table "managed_files_usages", force: :cascade do |t|
    t.integer  "managed_file_id", limit: 4
    t.string   "model",           limit: 255
    t.integer  "model_id",        limit: 4
    t.integer  "count",           limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "managed_files_usages", ["managed_file_id"], name: "index_managed_files_usages_on_managed_file_id", using: :btree

  add_foreign_key "managed_files_usages", "managed_files"
end
