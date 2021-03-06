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

ActiveRecord::Schema.define(version: 20171121195430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collaborations", force: :cascade do |t|
    t.bigint "project_id"
    t.integer "collaborator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_collaborations_on_project_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "design_id"
    t.integer "votes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_comments_on_design_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "connections", force: :cascade do |t|
    t.integer "design_id"
    t.integer "relateddesign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "design_tags", force: :cascade do |t|
    t.bigint "design_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_design_tags_on_design_id"
    t.index ["tag_id"], name: "index_design_tags_on_tag_id"
  end

  create_table "designs", force: :cascade do |t|
    t.string "title"
    t.text "url"
    t.text "code"
    t.text "description"
    t.boolean "original", default: false
    t.integer "views", default: 0
    t.integer "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "filename"
    t.bigint "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_images_on_design_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "design_id"
    t.integer "liker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_likes_on_design_id"
  end

  create_table "project_designs", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["design_id"], name: "index_project_designs_on_design_id"
    t.index ["project_id"], name: "index_project_designs_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "creator_id"
    t.boolean "public", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "email"
    t.text "password_digest"
    t.text "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "collaborations", "projects"
  add_foreign_key "comments", "designs"
  add_foreign_key "comments", "users"
  add_foreign_key "design_tags", "designs"
  add_foreign_key "design_tags", "tags"
  add_foreign_key "images", "designs"
  add_foreign_key "likes", "designs"
  add_foreign_key "project_designs", "designs"
  add_foreign_key "project_designs", "projects"
end
