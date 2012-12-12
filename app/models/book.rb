class Book < ActiveRecord::Base
  attr_accessible :isbn, :title, :author

  validates :isbn, :title, :author, :presence => true
  
  validates_uniqueness_of :title, :message => ": Título já cadastrado!" 

end