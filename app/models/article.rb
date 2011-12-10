class Article < ActiveRecord::Base
  belongs_to :user
  has_many :paragraphs, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :tags, :through => :articles_tags
end
