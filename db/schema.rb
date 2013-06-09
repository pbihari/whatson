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

ActiveRecord::Schema.define(:version => 20130609150322) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "parent_id"
  end

  add_index "categories", ["id"], :name => "index_categories_on_id"
  add_index "categories", ["name"], :name => "index_categories_on_name"
  add_index "categories", ["parent_id"], :name => "index_categories_on_parent_id"

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "start"
    t.datetime "finish"
    t.text     "description"
    t.string   "website"
    t.string   "venue"
    t.string   "city"
    t.string   "postcode"
    t.integer  "click_count"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "owner"
    t.integer  "event_photo"
  end

  add_index "events", ["city"], :name => "index_events_on_city"
  add_index "events", ["description"], :name => "index_events_on_description"
  add_index "events", ["id"], :name => "index_events_on_id"
  add_index "events", ["owner"], :name => "index_events_on_owner"
  add_index "events", ["postcode"], :name => "index_events_on_postcode"
  add_index "events", ["start"], :name => "index_events_on_start"
  add_index "events", ["title"], :name => "index_events_on_title"
  add_index "events", ["venue"], :name => "index_events_on_venue"

  create_table "interests", :force => true do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "interests", ["category_id"], :name => "index_interests_on_category_id"
  add_index "interests", ["user_id"], :name => "index_interests_on_user_id"

  create_table "likes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "likes", ["event_id"], :name => "index_likes_on_event_id"
  add_index "likes", ["user_id", "event_id"], :name => "index_likes_on_user_id_and_event_id", :unique => true
  add_index "likes", ["user_id"], :name => "index_likes_on_user_id"

  create_table "photos", :force => true do |t|
    t.string   "caption"
    t.binary   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.integer  "event_id"
  end

  add_index "photos", ["event_id"], :name => "index_photos_on_event_id"
  add_index "photos", ["user_id"], :name => "index_photos_on_user_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "is_locked"
    t.string   "type"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "predecessor_comment"
    t.boolean  "is_event_info"
  end

  add_index "posts", ["event_id"], :name => "index_posts_on_event_id"
  add_index "posts", ["predecessor_comment"], :name => "index_posts_on_predecessor_comment"
  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "taggings", :force => true do |t|
    t.integer  "event_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "taggings", ["category_id"], :name => "index_taggings_on_category_id"
  add_index "taggings", ["event_id"], :name => "index_taggings_on_event_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "profile_photo"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
