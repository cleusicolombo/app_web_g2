class Book < ActiveRecord::Base
  attr_accessible :ISBN, :titulo, :autor

  validates :ISBN, :titulo, :autor, :presence => true
  validates :ISBN, :uniqueness => true

end