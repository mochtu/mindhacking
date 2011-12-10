class Comment < ActiveRecord::Base
  belongs_to :paragraph_revision
  belongs_to :paragraph
  belongs_to :article
  belongs_to :user
end
