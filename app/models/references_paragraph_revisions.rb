class ReferencesParagraphRevisions < ActiveRecord::Base
  belongs_to :paragraph_revision
  belongs_to :references
end
