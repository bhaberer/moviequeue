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

ActiveRecord::Schema.define(version: 20131010180244) do

  create_table "lists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
  end

  create_table "lists_movies", id: false, force: true do |t|
    t.integer "list_id"
    t.integer "movie_id"
  end

  add_index "lists_movies", ["list_id", "movie_id"], name: "lists_movies_index", unique: true

  create_table "lists_users", id: false, force: true do |t|
    t.integer "list_id"
    t.integer "user_id"
  end

  add_index "lists_users", ["list_id", "user_id"], name: "lists_users_index", unique: true

  create_table "movies", force: true do |t|
    t.string   "title"
    t.string   "imdb_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "poster"
  end

  create_table "movies_users", id: false, force: true do |t|
    t.integer "movie_id"
    t.integer "user_id"
  end

  add_index "movies_users", ["movie_id", "user_id"], name: "movies_users_index", unique: true

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
