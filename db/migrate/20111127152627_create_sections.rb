class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :article

      t.timestamps
    end
    add_index :sections, :article_id
  end
end
