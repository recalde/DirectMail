# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100722215545) do

  create_table "mail_clients", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "district_number"
  end

  create_table "mail_pieces", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mail_client_id"
    t.string   "piece_name"
    t.string   "piece_code"
    t.string   "mail_universe_description"
    t.integer  "household_quantity_estimate"
    t.integer  "voter_count"
    t.string   "list_name"
    t.date     "date_to_printer"
    t.date     "target_hit_date"
    t.date     "actual_hit_date"
    t.string   "payment_description"
    t.string   "final_status"
    t.boolean  "have_invoice"
    t.date     "expected_drop_date"
    t.date     "usps_drop_date"
  end

end
