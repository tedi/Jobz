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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140712181816) do
=======
ActiveRecord::Schema.define(version: 20140712201011) do
>>>>>>> origin

  create_table "job_histories", force: true do |t|
    t.integer  "seeker_id"
    t.integer  "year_start"
    t.integer  "year_end"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_seekers", force: true do |t|
    t.string   "objective"
    t.string   "current_pos"
    t.integer  "grad_year"
    t.string   "college"
    t.string   "degree"
    t.integer  "loc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "jobs", force: true do |t|
    t.integer  "rec_id"
    t.string   "name"
    t.string   "description"
    t.string   "excerpt"
    t.string   "keywords"
    t.integer  "salary"
    t.integer  "company_id"
    t.integer  "location_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.integer  "zip_code"
    t.integer  "lat"
    t.integer  "long"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "recruiters", force: true do |t|
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

=======
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
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "role_id"
    t.integer  "recruiter_id"
    t.integer  "job_seeker_id"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

>>>>>>> origin
end
