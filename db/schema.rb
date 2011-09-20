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

ActiveRecord::Schema.define(:version => 20110919232017) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true

  create_table "answers", :force => true do |t|
    t.string   "answer"
    t.integer  "particeipant_id"
    t.integer  "q_n_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "particeipants", :force => true do |t|
    t.string   "email"
    t.integer  "trip_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.string   "question"
    t.integer  "survey_id"
    t.integer  "q_n"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", :force => true do |t|
    t.string   "name"
    t.integer  "trip_id"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", :force => true do |t|
    t.string   "name"
    t.string   "date"
    t.text     "description", :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sum"
  end

end
