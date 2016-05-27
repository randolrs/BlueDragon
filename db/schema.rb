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

ActiveRecord::Schema.define(version: 20160527203918) do

  create_table "articles", force: true do |t|
    t.string   "headline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "category"
    t.boolean  "imgoption"
    t.boolean  "lead"
    t.boolean  "red"
    t.boolean  "italicize"
    t.integer  "category_1_id",      default: 0
    t.integer  "category_2_id",      default: 0
  end

  create_table "categories", force: true do |t|
    t.string   "name",               default: ""
    t.string   "url",                default: ""
    t.integer  "top_article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_category_id"
    t.boolean  "header_display",     default: false
  end

  create_table "columnists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "category"
    t.string   "type"
    t.integer  "rating"
  end

  create_table "editors", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "editors", ["email"], name: "index_editors_on_email", unique: true
  add_index "editors", ["reset_password_token"], name: "index_editors_on_reset_password_token", unique: true

end
