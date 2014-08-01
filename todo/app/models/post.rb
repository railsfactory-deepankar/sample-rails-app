class Post < ActiveRecord::Base
belongs_to :model
validates :title, :status, :presence =>true
  validates :title, :length => {:minimum => 2}
  validates :title, :uniqueness => true
end
