class Usersbook < ActiveRecord::Base
  belongs_to :users
  belongs_to :books  
  attr_accessible :users_id, :books_id, :value

  validates_presence_of :users_id
  validates_presence_of :books_id
  validates_presence_of :value
 
  # Valida um usuário por livro
  validates :books_id, :uniqueness => { :scope => :users_id}
  has_many :books

end
