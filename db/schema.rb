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

ActiveRecord::Schema.define(version: 20150316135648) do

  create_table "acticles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "banners", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.date     "start"
    t.date     "expires"
    t.integer  "height"
    t.integer  "banner_group"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner_file_file_name"
    t.string   "banner_file_content_type"
    t.integer  "banner_file_file_size"
    t.datetime "banner_file_updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "acticle_id"
    t.text     "comment"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "comment_id"
    t.integer  "parent_id"
  end

  add_index "comments", ["acticle_id"], name: "index_comments_on_acticle_id"
  add_index "comments", ["comment_id"], name: "index_comments_on_comment_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "static_articles", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
  end

  create_table "uploaded_files", force: true do |t|
    t.integer  "type_id"
    t.integer  "user_id"
    t.boolean  "is_public",         default: false
    t.boolean  "is_checked",        default: false
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "uploaded_files", ["type_id"], name: "index_uploaded_files_on_type_id"
  add_index "uploaded_files", ["user_id"], name: "index_uploaded_files_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "uid"
    t.string   "provider"
    t.string   "pic_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "access",     default: true
  end

end
