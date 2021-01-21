# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_19_091912) do

  create_table "sizes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "height"
    t.integer "bust"
    t.integer "hip"
    t.integer "sleeve_length"
    t.integer "kimono_yuki"
    t.bigint "user_id", null: false
    t.integer "kimono_height"
    t.integer "kimono_maehaba"
    t.integer "kimono_usirohaba"
    t.integer "kimono_kurikosi"
    t.integer "kimono_katahaba"
    t.integer "kimono_sodehaba"
    t.integer "kimono_sodetuke"
    t.integer "kimono_miyatu"
    t.integer "kimono_okumihaba"
    t.integer "kimono_aiduma"
    t.integer "kimono_sodeguti"
    t.integer "kimono_marumi"
    t.integer "kimono_tumasita"
    t.integer "kimono_erihaba"
    t.integer "kimono_kataaki"
    t.integer "kimono_erikata"
    t.integer "kimono_detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sizes_on_user_id"
  end

  create_table "staffs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name_katakana", default: "", null: false
    t.string "last_name_katakana", default: "", null: false
    t.date "birthday"
    t.string "phone_number", default: ""
    t.string "telephone_number", default: ""
    t.string "address_number", default: "", null: false
    t.string "city", default: "", null: false
    t.string "building", default: ""
    t.string "address", default: "", null: false
    t.bigint "staff_id", null: false
    t.text "detail"
    t.integer "gender_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["staff_id"], name: "index_users_on_staff_id"
  end

  add_foreign_key "sizes", "users"
  add_foreign_key "users", "staffs"
end
