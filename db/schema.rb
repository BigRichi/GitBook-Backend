# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_29_212003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "git_user_clients", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.bigint "git_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_git_user_clients_on_client_id"
    t.index ["git_user_id"], name: "index_git_user_clients_on_git_user_id"
  end

  create_table "git_users", force: :cascade do |t|
    t.integer "github_id"
    t.string "login"
    t.string "name"
    t.string "avatar_url"
    t.string "bio"
    t.string "location"
    t.boolean "site_admin"
    t.boolean "hireable"
    t.integer "public_repos"
    t.string "repos_url"
    t.integer "followers"
    t.integer "following"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "repositories", force: :cascade do |t|
    t.bigint "git_user_id", null: false
    t.integer "repo_id"
    t.string "name"
    t.string "description"
    t.string "html_url"
    t.string "language"
    t.integer "size"
    t.integer "forks_count"
    t.integer "commits"
    t.string "events_url"
    t.datetime "last_commit_date"
    t.integer "watchers"
    t.integer "stargazers_count"
    t.datetime "repo_creation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["git_user_id"], name: "index_repositories_on_git_user_id"
  end

  add_foreign_key "git_user_clients", "clients"
  add_foreign_key "git_user_clients", "git_users"
  add_foreign_key "repositories", "git_users"
end
