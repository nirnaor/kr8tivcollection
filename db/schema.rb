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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120806150447) do

  create_table "jewels", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "weight"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "category_cd"
    t.integer  "metal_color_cd"
    t.integer  "metal_weight_cd"
    t.integer  "clarity_cd"
    t.integer  "cut_cd"
    t.string   "primary_image_file_name"
    t.string   "primary_image_content_type"
    t.integer  "primary_image_file_size"
    t.datetime "primary_image_updated_at"
    t.string   "birth_image_1_file_name"
    t.string   "birth_image_1_content_type"
    t.integer  "birth_image_1_file_size"
    t.datetime "birth_image_1_updated_at"
    t.string   "birth_image_2_file_name"
    t.string   "birth_image_2_content_type"
    t.integer  "birth_image_2_file_size"
    t.datetime "birth_image_2_updated_at"
    t.string   "birth_image_3_file_name"
    t.string   "birth_image_3_content_type"
    t.integer  "birth_image_3_file_size"
    t.datetime "birth_image_3_updated_at"
    t.string   "birth_image_4_file_name"
    t.string   "birth_image_4_content_type"
    t.integer  "birth_image_4_file_size"
    t.datetime "birth_image_4_updated_at"
    t.string   "birth_image_5_file_name"
    t.string   "birth_image_5_content_type"
    t.integer  "birth_image_5_file_size"
    t.datetime "birth_image_5_updated_at"
    t.string   "birth_image_6_file_name"
    t.string   "birth_image_6_content_type"
    t.integer  "birth_image_6_file_size"
    t.datetime "birth_image_6_updated_at"
    t.string   "birth_image1_file_name"
    t.string   "birth_image1_content_type"
    t.integer  "birth_image1_file_size"
    t.datetime "birth_image1_updated_at"
    t.string   "birth_image2_file_name"
    t.string   "birth_image2_content_type"
    t.integer  "birth_image2_file_size"
    t.datetime "birth_image2_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
