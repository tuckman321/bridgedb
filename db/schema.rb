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

ActiveRecord::Schema.define(version: 20150527022605) do

  create_table "bridges", force: :cascade do |t|
    t.string   "BridgeNo"
    t.string   "Location"
    t.string   "InspectedBy"
    t.date     "InspectDate"
    t.string   "ChiViaNo"
    t.string   "DotCrossNo"
    t.integer  "Built"
    t.string   "Type"
    t.integer  "Length"
    t.date     "LastInspectDate"
    t.string   "LastRepairs"
    t.string   "NoTypeSpan"
    t.integer  "RepairPriority"
    t.string   "GenCond"
    t.integer  "Walkway"
    t.string   "ComWalkway"
    t.integer  "Handrail"
    t.string   "ComHandrail"
    t.integer  "Track"
    t.string   "ComTrack"
    t.integer  "Ballast"
    t.string   "ComBallast"
    t.integer  "Deck"
    t.string   "ComDeck"
    t.integer  "FloorSystem"
    t.string   "ComFloorSystem"
    t.integer  "ThruGirder"
    t.string   "ComThruGirder"
    t.integer  "Xgirder"
    t.string   "ComXGirder"
    t.integer  "Stringer"
    t.string   "ComStringer"
    t.integer  "Bearing"
    t.string   "ComBearing"
    t.integer  "ColPier"
    t.string   "ComColPier"
    t.integer  "Caps"
    t.string   "ComCap"
    t.integer  "Post"
    t.string   "ComPost"
    t.integer  "Bases"
    t.string   "ComBase"
    t.integer  "Abut"
    t.string   "ComAbut"
    t.integer  "BackWall"
    t.string   "ComBackWall"
    t.integer  "Seat"
    t.string   "ComSeat"
    t.integer  "Paint"
    t.string   "ComPaint"
    t.date     "LastPaint"
    t.integer  "Light"
    t.string   "ComLight"
    t.string   "MaintLight"
    t.integer  "Endpost"
    t.string   "ComEndpost"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
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
