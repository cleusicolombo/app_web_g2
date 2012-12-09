class Usersbook < ActiveRecord::Base
  belongs_to :users
  belongs_to :books  
  attr_accessible :users_id, :books_id, :value

  validates_presence_of :users_id
  validates_presence_of :books_id
  validates_presence_of :value 
 
  # Valida combinação única de usuário e livro
  validates :books_id, :uniqueness => { :scope => :users_id}
  
  #Valida valor numérico para "value", com mensagem de erro
  validates :value, :numericality => { :only_float => true, :message => " inválido. Tente outra vez!"} 
  #validates :value, :numericality => true, :message => " inválido. Tente outra vez!" 
  #validates_format_of :value, :with => /[0-9]+[.,]?[0-9]+/i, :message => " inválido. Tente outra vez!" 
  
  has_many :books

end
