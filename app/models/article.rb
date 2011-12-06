class Article < ActiveRecord::Base
  belongs_to :author
  has_many :sections
  
  validates :title, :presence => true
end
