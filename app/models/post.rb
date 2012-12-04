class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates_presence_of :name, :title, :content
  has_many :comments, :dependent => :destroy

  paginates_per 20
  max_paginates_per 50
end
