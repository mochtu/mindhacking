class Paragraphs < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  has_many :comments
  has_many :paragraph_revisions
end
