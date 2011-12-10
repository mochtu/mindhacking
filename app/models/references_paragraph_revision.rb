class ReferencesParagraphRevision < ActiveRecord::Base
  belongs_to :paragraph_revision
  belongs_to :reference
end
