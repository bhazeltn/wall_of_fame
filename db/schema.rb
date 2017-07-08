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

ActiveRecord::Schema.define(version: 20170707193557) do

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.string "html_name"
    t.integer "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_events_on_level_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "group_name"
    t.string "html_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "level"
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
    t.float "score"
    t.string "skater1"
    t.string "skater2"
    t.string "skater3"
    t.string "skater4"
    t.string "team_name"
    t.string "competition"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "segment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
