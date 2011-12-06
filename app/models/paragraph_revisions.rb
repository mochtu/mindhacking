class ParagraphRevisions < ActiveRecord::Base
  belongs_to :paragraph
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :references, :through => :references_paragraph_revisions
end
