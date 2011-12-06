class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.references :article
      t.integer :position
      t.integer :current_revision
      t.references :user

      t.timestamps
    end
    add_index :paragraphs, :article_id
  end
end
