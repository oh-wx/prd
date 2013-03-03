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

ActiveRecord::Schema.define(:version => 20130302194039) do

  create_table "discussions", :force => true do |t|
    t.string   "url"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "date"
    t.string   "disc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mesos", :force => true do |t|
    t.string   "number"
    t.string   "disc"
    t.string   "image"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "models", :force => true do |t|
    t.string   "hour"
    t.string   "type"
    t.string   "init_time"
    t.string   "init_date"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "outlooks", :force => true do |t|
    t.string   "init_time"
    t.string   "init_date"
    t.string   "day"
    t.string   "risk"
    t.string   "cat"
    t.string   "prob"
    t.string   "disc"
    t.string   "torn"
    t.string   "hail"
    t.string   "wind"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pictures", :force => true do |t|
    t.string   "url"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "radars", :force => true do |t|
    t.string   "time"
    t.string   "image"
    t.string   "date"
    t.string   "area"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wws", :force => true do |t|
    t.string   "number"
    t.string   "disc"
    t.string   "image"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
