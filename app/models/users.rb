class Users < ActiveRecord::Base
  has_many :comments
end
