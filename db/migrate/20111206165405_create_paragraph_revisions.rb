class CreateParagraphRevisions < ActiveRecord::Migration
  def change
    create_table :paragraph_revisions do |t|
      t.references :paragraph
      t.string :type
      t.text :text
      t.string :image_url
      t.integer :revision
      t.integer :parent
      t.references :user

      t.timestamps
    end
    add_index :paragraph_revisions, :paragraph_id
    add_index :paragraph_revisions, :user_id
  end
end
