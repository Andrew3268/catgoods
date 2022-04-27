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

ActiveRecord::Schema.define(version: 2022_04_25_065417) do

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "feeds", force: :cascade do |t|
    t.integer "user_id"
    t.string "f_title"
    t.string "f_link"
    t.string "f_image"
    t.string "f_hashtag"
    t.string "f_key_word"
    t.string "f_friendly_id"
    t.text "f_description"
    t.string "f_spare_01"
    t.string "f_spare_02"
    t.string "f_spare_03"
    t.string "f_spare_04"
    t.string "f_spare_05"
    t.string "f_spare_06"
    t.string "f_spare_07"
    t.string "f_spare_08"
    t.string "f_spare_09"
    t.string "f_spare_10"
    t.text "f_spare_31"
    t.text "f_spare_32"
    t.float "f_spare_41"
    t.float "f_spare_42"
    t.float "f_spare_43"
    t.integer "f_spare_56"
    t.integer "f_spare_57"
    t.integer "f_spare_58"
    t.decimal "f_spare_61"
    t.decimal "f_spare_62"
    t.decimal "f_spare_63"
    t.datetime "f_spare_66"
    t.datetime "f_spare_67"
    t.date "f_spare_71"
    t.date "f_spare_72"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "jibsas", force: :cascade do |t|
    t.integer "user_id"
    t.string "j_title"
    t.string "j_link"
    t.string "j_image"
    t.string "j_source"
    t.string "j_hashtag"
    t.string "j_rating"
    t.string "j_review_count"
    t.string "j_key_word"
    t.string "j_friendly_id"
    t.decimal "j_is_price"
    t.decimal "j_was_price"
    t.decimal "j_pct"
    t.text "j_description"
    t.string "j_spare_01"
    t.string "j_spare_02"
    t.string "j_spare_03"
    t.string "j_spare_04"
    t.string "j_spare_05"
    t.string "j_spare_06"
    t.string "j_spare_07"
    t.string "j_spare_08"
    t.string "j_spare_09"
    t.string "j_spare_10"
    t.text "j_spare_31"
    t.text "j_spare_32"
    t.float "j_spare_41"
    t.float "j_spare_42"
    t.float "j_spare_43"
    t.integer "j_spare_56"
    t.integer "j_spare_57"
    t.integer "j_spare_58"
    t.decimal "j_spare_61"
    t.decimal "j_spare_62"
    t.decimal "j_spare_63"
    t.datetime "j_spare_66"
    t.datetime "j_spare_67"
    t.date "j_spare_71"
    t.date "j_spare_72"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.integer "j_option_01"
    t.integer "j_option_02"
    t.integer "j_option_03"
    t.integer "j_option_04"
    t.integer "j_option_05"
    t.integer "j_option_06"
    t.integer "j_option_07"
    t.integer "j_option_08"
    t.integer "j_option_09"
    t.integer "j_option_10"
    t.decimal "j_option_11"
    t.decimal "j_option_12"
    t.decimal "j_option_13"
    t.decimal "j_option_14"
    t.decimal "j_option_15"
    t.decimal "j_option_16"
    t.decimal "j_option_17"
    t.decimal "j_option_18"
    t.decimal "j_option_19"
    t.decimal "j_option_20"
    t.index ["slug"], name: "index_jibsas_on_slug", unique: true
  end

  create_table "jibsas_tags", id: false, force: :cascade do |t|
    t.integer "jibsa_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jibsa_id"], name: "index_jibsas_tags_on_jibsa_id"
    t.index ["tag_id"], name: "index_jibsas_tags_on_tag_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "link"
    t.string "image"
    t.string "source"
    t.string "hashtag"
    t.string "rating"
    t.string "review_count"
    t.string "key_word"
    t.string "star_5"
    t.string "star_4_5"
    t.string "star_4"
    t.string "star_3_5"
    t.string "star_3"
    t.decimal "is_price"
    t.decimal "was_price"
    t.decimal "pct"
    t.text "description"
    t.string "spare_01"
    t.string "spare_02"
    t.string "spare_03"
    t.string "spare_04"
    t.string "spare_05"
    t.string "spare_06"
    t.string "spare_07"
    t.string "spare_08"
    t.string "spare_09"
    t.string "spare_10"
    t.string "spare_11"
    t.string "spare_12"
    t.string "spare_13"
    t.string "spare_14"
    t.string "spare_15"
    t.text "spare_31"
    t.text "spare_32"
    t.float "spare_41"
    t.float "spare_42"
    t.float "spare_43"
    t.float "spare_44"
    t.float "spare_45"
    t.integer "spare_56"
    t.integer "spare_57"
    t.integer "spare_58"
    t.integer "spare_59"
    t.integer "spare_60"
    t.decimal "spare_61"
    t.decimal "spare_62"
    t.decimal "spare_63"
    t.decimal "spare_64"
    t.decimal "spare_65"
    t.datetime "spare_66"
    t.datetime "spare_67"
    t.datetime "spare_68"
    t.date "spare_71"
    t.date "spare_72"
    t.date "spare_73"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_posts_on_slug", unique: true
  end

  create_table "posts_tags", id: false, force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_posts_tags_on_post_id"
    t.index ["tag_id"], name: "index_posts_tags_on_tag_id"
  end

  create_table "punches", force: :cascade do |t|
    t.integer "punchable_id", null: false
    t.string "punchable_type", limit: 20, null: false
    t.datetime "starts_at", null: false
    t.datetime "ends_at", null: false
    t.datetime "average_time", null: false
    t.integer "hits", default: 1, null: false
    t.index ["average_time"], name: "index_punches_on_average_time"
    t.index ["punchable_type", "punchable_id"], name: "punchable_index"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "jibsas_tags", "jibsas"
  add_foreign_key "jibsas_tags", "tags"
  add_foreign_key "posts_tags", "posts"
  add_foreign_key "posts_tags", "tags"
end
