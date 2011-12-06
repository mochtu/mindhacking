class ArticlesTags < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
end
