class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :user
      t.string :text
      t.boolean :is_category
      t.integer :parent

      t.timestamps
    end
    add_index :tags, :user_id
  end
end
