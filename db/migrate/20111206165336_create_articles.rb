class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user
      t.string :title

      t.timestamps
    end
    add_index :articles, :user_id
  end
end
