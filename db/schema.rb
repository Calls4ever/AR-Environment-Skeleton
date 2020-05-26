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

ActiveRecord::Schema.define(version: 2020_05_25_221335) do

  create_table "business_accounts", force: :cascade do |t|
    t.float "balance"
    t.integer "daily_limit", default: 100000
  end

  create_table "consumers", force: :cascade do |t|
    t.string "name"
  end

  create_table "joint_accounts", force: :cascade do |t|
    t.integer "consumer_id"
    t.integer "merchant_id"
    t.integer "personal_bank_id"
    t.integer "business_account_id"
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "merchant_id"
    t.integer "consumer_id"
    t.integer "transfer_id"
    t.integer "pay_id"
  end

  create_table "pays", force: :cascade do |t|
    t.integer "amount"
    t.boolean "pending", default: true
  end

  create_table "personal_banks", force: :cascade do |t|
    t.float "balance"
    t.integer "daily_limit", default: 5000
  end

  create_table "transfers", force: :cascade do |t|
    t.boolean "pending", default: false
    t.integer "amount"
    t.datetime "transaction_date"
  end

end
