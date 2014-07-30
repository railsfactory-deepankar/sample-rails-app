class Post < ActiveRecord::Base
validates :title, :status, :presence =>true
  validates :title, :length => {:minimum => 2}
  validates :title, :uniqueness => true
end
