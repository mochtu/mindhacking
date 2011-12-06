class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.references :article

      t.timestamps
    end
    add_index :authors, :article_id
  end
end
