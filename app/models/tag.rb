class Tag < ActiveRecord::Base
  belongs_to :user
  has_many :articles, :through => :articles_tags
  #has_and_belongs_to_many :articles
end
