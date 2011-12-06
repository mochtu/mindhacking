class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :paragraph_revision
      t.references :paragraph
      t.references :article
      t.text :text
      t.references :user

      t.timestamps
    end
    add_index :comments, :paragraph_revision_id
    add_index :comments, :paragraph_id
    add_index :comments, :article_id
    add_index :comments, :user_id
  end
end
