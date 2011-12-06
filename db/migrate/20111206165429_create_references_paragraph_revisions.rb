class CreateReferencesParagraphRevisions < ActiveRecord::Migration
  def change
    create_table :references_paragraph_revisions do |t|
      t.references :paragraph_revision
      t.references :references
    end
    add_index :references_paragraph_revisions, :paragraph_revision_id
    add_index :references_paragraph_revisions, :references_id
  end
end
