ActiveRecord::Schema.define(version: 20161209212528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.string   "cookie"
    t.string   "baker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vote_cards", force: :cascade do |t|
    t.string   "name"
    t.integer  "best_in_show_id"
    t.integer  "most_decorative_id"
    t.integer  "most_delicious_id"
    t.integer  "most_traditional_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
