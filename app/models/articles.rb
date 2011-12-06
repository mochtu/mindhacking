class Articles < ActiveRecord::Base
  belongs_to :user
  has_many :paragraphs
  has_many :comments
  has_and_belongs_to_many :tags, :through => :articles_tags
end
