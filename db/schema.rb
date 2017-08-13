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

ActiveRecord::Schema.define(version: 20170810185547) do

  create_table "ab_teams", force: :cascade do |t|
    t.integer "skater_id"
    t.integer "team_id"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skater_id"], name: "index_ab_teams_on_skater_id"
    t.index ["team_id"], name: "index_ab_teams_on_team_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "award_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "awards", force: :cascade do |t|
    t.integer "award_type_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_type_id"], name: "index_awards_on_award_type_id"
  end

  create_table "club_awards", force: :cascade do |t|
    t.integer "skater_id"
    t.integer "award_id"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_id"], name: "index_club_awards_on_award_id"
    t.index ["skater_id"], name: "index_club_awards_on_skater_id"
  end

  create_table "competitions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "html_name"
    t.integer "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_events_on_level_id"
  end

  create_table "external_awards", force: :cascade do |t|
    t.integer "skater_id"
    t.string "award"
    t.string "web_site"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skater_id"], name: "index_external_awards_on_skater_id"
  end

  create_table "gold_tests", force: :cascade do |t|
    t.integer "skater_id"
    t.string "testLevel"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skater_id"], name: "index_gold_tests_on_skater_id"
  end

  create_table "goves", force: :cascade do |t|
    t.integer "level_id"
    t.integer "event_id"
    t.integer "segment_id"
    t.integer "year"
    t.integer "competition_id"
    t.string "skater1"
    t.string "skater2"
    t.string "element"
    t.integer "grade"
    t.date "achieved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_goves_on_competition_id"
    t.index ["event_id"], name: "index_goves_on_event_id"
    t.index ["level_id"], name: "index_goves_on_level_id"
    t.index ["segment_id"], name: "index_goves_on_segment_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "html_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.string "html_name"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_levels_on_group_id"
  end

  create_table "score_types", force: :cascade do |t|
    t.string "score_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "event_id"
    t.integer "segment_id"
    t.integer "score_type_id"
    t.integer "competition_id"
    t.float "score"
    t.integer "skater1"
    t.integer "skater2"
    t.integer "skater3"
    t.integer "skater4"
    t.string "team_name"
    t.date "achieved"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_scores_on_competition_id"
    t.index ["event_id"], name: "index_scores_on_event_id"
    t.index ["score_type_id"], name: "index_scores_on_score_type_id"
    t.index ["segment_id"], name: "index_scores_on_segment_id"
  end

  create_table "segment_events", force: :cascade do |t|
    t.integer "segment_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_segment_events_on_event_id"
    t.index ["segment_id"], name: "index_segment_events_on_segment_id"
  end

  create_table "segment_score_types", force: :cascade do |t|
    t.integer "segment_id"
    t.integer "score_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["score_type_id"], name: "index_segment_score_types_on_score_type_id"
    t.index ["segment_id"], name: "index_segment_score_types_on_segment_id"
  end

  create_table "segments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skaters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "star_golds", force: :cascade do |t|
    t.integer "star_level_id"
    t.integer "skater_id"
    t.integer "competition_id"
    t.string "element"
    t.date "achieved"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_star_golds_on_competition_id"
    t.index ["skater_id"], name: "index_star_golds_on_skater_id"
    t.index ["star_level_id"], name: "index_star_golds_on_star_level_id"
  end

  create_table "star_levels", force: :cascade do |t|
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "star_tests", force: :cascade do |t|
    t.integer "star_level_id"
    t.string "name"
    t.string "name_with_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["star_level_id"], name: "index_star_tests_on_star_level_id"
  end

  create_table "star_with_honors", force: :cascade do |t|
    t.integer "star_test_id"
    t.integer "skater_id"
    t.date "achieved"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skater_id"], name: "index_star_with_honors_on_skater_id"
    t.index ["star_test_id"], name: "index_star_with_honors_on_star_test_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
