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

ActiveRecord::Schema.define(version: 20160218054317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_mls", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "language_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "parent_comment_id"
    t.integer  "comment_user_id"
    t.datetime "comment_datetime"
    t.text     "comment_body"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.integer  "sort_order"
    t.string   "code"
    t.string   "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies_mls", force: :cascade do |t|
    t.integer  "currency_id"
    t.integer  "language_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.integer  "code"
    t.integer  "val"
    t.integer  "sort_order"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "divisions_mls", force: :cascade do |t|
    t.integer  "division_id"
    t.integer  "language_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "friends", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_user_id"
    t.integer  "status_div"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "funding_p_summaries", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "funded_count"
    t.integer  "backer_count"
    t.decimal  "funded_amount", precision: 10, scale: 2
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.decimal  "goal_amount",   precision: 10, scale: 2
    t.float    "achieved"
  end

  create_table "funding_r_summaries", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "reward_id"
    t.integer  "funded_count"
    t.integer  "backer_count"
    t.decimal  "funded_amount", precision: 10, scale: 2
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "fundings", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "reward_id"
    t.integer  "backer_user_id"
    t.datetime "fund_datetime"
    t.decimal  "fund_amount",         precision: 10, scale: 2
    t.decimal  "shipping_rate",       precision: 10, scale: 2
    t.decimal  "total_amount",        precision: 10, scale: 2
    t.integer  "payment_method_div"
    t.integer  "payment_vendor_id"
    t.string   "shipping_first_name"
    t.string   "shipping_last_name"
    t.string   "shipping_tel"
    t.integer  "shipping_nation_id"
    t.string   "shipping_zip_code"
    t.string   "shipping_address1"
    t.string   "shipping_address2"
    t.string   "shipping_address3"
    t.string   "shipping_address4"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "name_en"
    t.integer  "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "message_details", force: :cascade do |t|
    t.integer  "message_id"
    t.integer  "sender_user_id"
    t.datetime "sent_datetime"
    t.text     "body"
    t.integer  "read_flg"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "backer_user_id"
    t.string   "title"
    t.datetime "begin_datetime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "nations", force: :cascade do |t|
    t.integer  "sort_order"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.datetime "news_datetime"
    t.integer  "language_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "notify_datetime"
    t.string   "title"
    t.text     "body"
    t.integer  "read_flg"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "payment_vendors", force: :cascade do |t|
    t.integer  "sort_order"
    t.string   "logo_image_path"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "payment_vendors_mls", force: :cascade do |t|
    t.integer  "payment_vendor_id"
    t.integer  "language_id"
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "project_details", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "language_id"
    t.integer  "sort_order"
    t.string   "title"
    t.text     "description"
    t.string   "image_path"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "project_members", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "member_user_id"
    t.integer  "sort_order"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "type_div"
    t.integer  "prime_language_id"
    t.string   "multi_language_ids"
    t.integer  "category_id"
    t.decimal  "goal_amount",             precision: 10, scale: 2
    t.integer  "currency_id"
    t.integer  "applied_duration_months"
    t.integer  "applied_duration_days"
    t.datetime "applied_due_date"
    t.integer  "creator_user_id"
    t.string   "twitter_user_name"
    t.string   "facebook_user_name"
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
    t.integer  "nation_id"
    t.string   "region"
    t.integer  "status_div"
    t.integer  "closed_status_div"
    t.datetime "applied_datetime"
    t.datetime "approved_datetime"
    t.integer  "approver_staff_id"
    t.datetime "begin_datetime"
    t.datetime "due_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "projects_mls", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "language_id"
    t.string   "title"
    t.string   "image_path"
    t.string   "creator_name"
    t.string   "creator_image_path"
    t.text     "creator_description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "ranking_details", force: :cascade do |t|
    t.integer  "ranking_id"
    t.integer  "ranking_type_div"
    t.integer  "ranked_order"
    t.integer  "project_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.integer  "active_flg"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_mls", force: :cascade do |t|
    t.integer  "report_id"
    t.integer  "language_id"
    t.string   "title"
    t.string   "image_path"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "report_datetime"
    t.integer  "draft_flg"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "rewards", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "sort_order"
    t.decimal  "price",                         precision: 10, scale: 2
    t.integer  "estimated_delivery_year"
    t.integer  "estimated_delivery_month"
    t.integer  "estimated_delivery_detail_div"
    t.integer  "ships_to_div"
    t.integer  "max_count"
    t.integer  "status_div"
    t.datetime "applied_datetime"
    t.datetime "approved_datetime"
    t.integer  "approver_staff_id"
    t.datetime "begin_datetime"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  create_table "rewards_mls", force: :cascade do |t|
    t.integer  "reward_id"
    t.integer  "language_id"
    t.string   "title"
    t.string   "image_path"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shipping_destinations", force: :cascade do |t|
    t.integer  "reward_id"
    t.integer  "sort_order"
    t.integer  "nation_id"
    t.decimal  "shipping_rate", precision: 10, scale: 2
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "tips", force: :cascade do |t|
    t.datetime "tips_datetime"
    t.integer  "receiver_user_id"
    t.text     "body"
    t.integer  "read_flg"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "sign_in_count",                       default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "user_cd"
    t.integer  "uid",                       limit: 8
    t.string   "provider"
    t.string   "password"
    t.string   "user_first_name"
    t.string   "user_last_name"
    t.string   "image_path"
    t.integer  "language_id"
    t.string   "email"
    t.string   "tel"
    t.integer  "nation_id"
    t.string   "zip_code"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "address4"
    t.string   "twitter_user_name"
    t.string   "facebook_user_name"
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
    t.date     "birth_date"
    t.integer  "birth_date_pub_div"
    t.integer  "gender_div"
    t.integer  "gender_pub_div"
    t.text     "self_description"
    t.integer  "status_div"
    t.integer  "withdraw_reason_div"
    t.text     "withdraw_reason_detail"
    t.integer  "news_letter_subscribe_flg"
    t.integer  "report_notify_flg"
    t.integer  "message_notify_flg"
    t.integer  "comment_notify_flg"
    t.datetime "member_from"
    t.integer  "blacklisted_flg"
    t.text     "blacklisted_comment"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
