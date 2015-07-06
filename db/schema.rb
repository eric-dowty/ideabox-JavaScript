ActiveRecord::Schema.define(version: 20150706172621) do

  enable_extension "plpgsql"

  create_table "ideas", force: :cascade do |t|
    t.string  "title"
    t.string  "body"
    t.integer "quality_id"
  end

  add_index "ideas", ["quality_id"], name: "index_ideas_on_quality_id", using: :btree

  create_table "qualities", force: :cascade do |t|
    t.string "description"
  end

  add_foreign_key "ideas", "qualities"
end
