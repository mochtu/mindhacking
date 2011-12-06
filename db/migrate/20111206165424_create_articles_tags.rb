class CreateArticlesTags < ActiveRecord::Migration
  def change
    create_table :articles_tags do |t|
      t.references :article
      t.references :tag
    end
    add_index :articles_tags, :article_id
    add_index :articles_tags, :tag_id
  end
end
