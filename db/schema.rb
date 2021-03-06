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

ActiveRecord::Schema.define(version: 20140102131348) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.text     "details"
    t.text     "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_authors", force: true do |t|
    t.integer  "author_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_categories", force: true do |t|
    t.integer  "book_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "title"
    t.text     "isbn"
    t.float    "edition"
    t.binary   "is_verified"
    t.integer  "publication_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "details"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "name"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.text     "comment"
    t.float    "rating"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
