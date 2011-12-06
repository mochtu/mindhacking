class Tags < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :articles, :through => :articles_tags
end
