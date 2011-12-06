class References < ActiveRecord::Base
  has_and_belongs_to_many :paragraph_revisions, :through => :references_paragraph_revisions
end
