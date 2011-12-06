class Article < ActiveRecord::Base
  has_one :author
  has_many :sections
  has_many :articles, :through => :sections
  
  validates :title, :presence => true
end
