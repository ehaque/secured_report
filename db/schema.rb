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

ActiveRecord::Schema.define(:version => 20110519034133) do

  create_table "dummy_table_for_test", :force => true do |t|
    t.string "name", :limit => 200
  end

  create_table "filters", :force => true do |t|
    t.string   "name"
    t.integer  "report_id",  :limit => 4
    t.string   "field_name"
    t.string   "operation"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "file_name"
    t.boolean  "is_secured",   :limit => 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "report_group", :limit => 100
    t.decimal  "date_range",                  :precision => 3, :scale => 0
    t.decimal  "record_count",                :precision => 4, :scale => 0
    t.decimal  "security",                    :precision => 1, :scale => 0
  end

  create_table "rs_lastcommit", :primary_key => "origin", :force => true do |t|
    t.binary   "origin_qid",    :limit => 36
    t.binary   "secondary_qid", :limit => 36
    t.datetime "origin_time"
    t.datetime "commit_time"
  end

  create_table "rs_threads", :force => true do |t|
    t.integer "seq", :limit => 4
  end

end
