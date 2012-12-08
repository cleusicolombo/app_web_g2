class Book < ActiveRecord::Base
  attr_accessible :isbn, :title, :author

  validates :isbn, :title, :author, :presence => true

end