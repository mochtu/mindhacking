class ChangeReferencesParagraphRevisions < ActiveRecord::Migration
  def up
    rename_index :references_paragraph_revisions, 'index_references_paragraph_revisions_on_references_id', 'index_on_reference_id'
    rename_index :references_paragraph_revisions, 'index_references_paragraph_revisions_on_paragraph_revision_id', 'index_on_paragraph_revision_id'
    rename_column :references_paragraph_revisions, :references_id, :reference_id
  end
  
  def down
    rename_index :references_paragraph_revisions, 'index_on_reference_id', 'index_references_paragraph_revisions_on_references_id'
    rename_index :references_paragraph_revisions, 'index_on_paragraph_revision_id', 'index_references_paragraph_revisions_on_paragraph_revision_id'
    rename_column :references_paragraph_revisions, :reference_id, :references_id
  end
end
