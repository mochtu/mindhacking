class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :title
      t.string :authors
      t.date :published_on
      t.string :url

      t.timestamps
    end
  end
end
