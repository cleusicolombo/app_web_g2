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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121127232115) do

  create_table "books", :force => true do |t|
    t.string   "isbn"
    t.string   "title"
    t.string   "author"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users_exchanges", :force => true do |t|
    t.integer  "users_id_1"
    t.string   "users_id_2"
    t.string   "integer"
    t.integer  "books_id_1"
    t.string   "books_id_2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usersbooks", :force => true do |t|
    t.integer  "users_id"
    t.integer  "books_id"
    t.float    "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
