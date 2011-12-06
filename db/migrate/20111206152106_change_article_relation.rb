class ChangeArticleRelation < ActiveRecord::Migration
  def change
    remove_column :authors, :article_id
    
    change_table :articles do |t|
      t.references :author
    end
    
    add_index :articles, :author_id
  end
end
