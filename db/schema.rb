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

<<<<<<< Updated upstream
ActiveRecord::Schema.define(:version => 20111209133653) do
=======
ActiveRecord::Schema.define(:version => 20111206171134) do
>>>>>>> Stashed changes

  create_table "articles", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["user_id"], :name => "index_articles_on_user_id"

  create_table "articles_tags", :force => true do |t|
    t.integer "article_id"
    t.integer "tag_id"
  end

  add_index "articles_tags", ["article_id"], :name => "index_articles_tags_on_article_id"
  add_index "articles_tags", ["tag_id"], :name => "index_articles_tags_on_tag_id"

  create_table "comments", :force => true do |t|
    t.integer  "paragraph_revision_id"
    t.integer  "paragraph_id"
    t.integer  "article_id"
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["article_id"], :name => "index_comments_on_article_id"
  add_index "comments", ["paragraph_id"], :name => "index_comments_on_paragraph_id"
  add_index "comments", ["paragraph_revision_id"], :name => "index_comments_on_paragraph_revision_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "paragraph_revisions", :force => true do |t|
    t.integer  "paragraph_id"
    t.string   "type"
    t.text     "text"
    t.string   "image_url"
    t.integer  "revision"
    t.integer  "parent"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "paragraph_revisions", ["paragraph_id"], :name => "index_paragraph_revisions_on_paragraph_id"
  add_index "paragraph_revisions", ["user_id"], :name => "index_paragraph_revisions_on_user_id"

  create_table "paragraphs", :force => true do |t|
    t.integer  "article_id"
    t.integer  "position"
    t.integer  "current_revision"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "paragraphs", ["article_id"], :name => "index_paragraphs_on_article_id"

  create_table "references", :force => true do |t|
    t.string   "title"
    t.string   "authors"
    t.date     "published_on"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references_paragraph_revisions", :force => true do |t|
    t.integer "paragraph_revision_id"
    t.integer "reference_id"
  end

  add_index "references_paragraph_revisions", ["paragraph_revision_id"], :name => "index_on_paragraph_revision_id"
  add_index "references_paragraph_revisions", ["reference_id"], :name => "index_on_reference_id"

  create_table "tags", :force => true do |t|
    t.integer  "user_id"
    t.string   "text"
    t.boolean  "is_category"
    t.integer  "parent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["user_id"], :name => "index_tags_on_user_id"

  create_table "tags", :force => true do |t|
    t.integer  "user_id"
    t.string   "text"
    t.boolean  "is_category"
    t.integer  "parent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["user_id"], :name => "index_tags_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "gravatar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
