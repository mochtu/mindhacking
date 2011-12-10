class ParagraphRevision < ActiveRecord::Base
  belongs_to :paragraph
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :references, :through => :references_paragraph_revisions
end
