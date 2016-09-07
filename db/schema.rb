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

ActiveRecord::Schema.define(version: 20160907171214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recipes", force: :cascade do |t|
    t.string   "title",        null: false
    t.string   "image",        null: false
    t.text     "ingredients",  null: false
    t.text     "instructions", null: false
    t.integer  "author_id",    null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "recipes", ["author_id"], name: "index_recipes_on_author_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "recipe_id",    null: false
    t.integer  "vegetable_id", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "taggings", ["recipe_id"], name: "index_taggings_on_recipe_id", using: :btree
  add_index "taggings", ["vegetable_id"], name: "index_taggings_on_vegetable_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "vegetables", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.boolean  "jan",         null: false
    t.boolean  "feb",         null: false
    t.boolean  "mar",         null: false
    t.boolean  "apr",         null: false
    t.boolean  "may",         null: false
    t.boolean  "jun",         null: false
    t.boolean  "jul",         null: false
    t.boolean  "aug",         null: false
    t.boolean  "sep",         null: false
    t.boolean  "oct",         null: false
    t.boolean  "nov",         null: false
    t.boolean  "dec",         null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

  add_index "vegetables", ["apr"], name: "index_vegetables_on_apr", using: :btree
  add_index "vegetables", ["aug"], name: "index_vegetables_on_aug", using: :btree
  add_index "vegetables", ["dec"], name: "index_vegetables_on_dec", using: :btree
  add_index "vegetables", ["feb"], name: "index_vegetables_on_feb", using: :btree
  add_index "vegetables", ["jan"], name: "index_vegetables_on_jan", using: :btree
  add_index "vegetables", ["jul"], name: "index_vegetables_on_jul", using: :btree
  add_index "vegetables", ["jun"], name: "index_vegetables_on_jun", using: :btree
  add_index "vegetables", ["mar"], name: "index_vegetables_on_mar", using: :btree
  add_index "vegetables", ["may"], name: "index_vegetables_on_may", using: :btree
  add_index "vegetables", ["nov"], name: "index_vegetables_on_nov", using: :btree
  add_index "vegetables", ["oct"], name: "index_vegetables_on_oct", using: :btree
  add_index "vegetables", ["sep"], name: "index_vegetables_on_sep", using: :btree

end
