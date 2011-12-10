class Reference < ActiveRecord::Base
  has_many :paragraph_revisions, :through => :references_paragraph_revisions
end
