class Paragraphs < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  has_one :current, :class_name => "ParagraphRevision", :foreign_key => "current_revision"
  has_many :comments
  has_many :paragraph_revisions
end
