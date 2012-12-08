class User < ActiveRecord::Base
  attr_accessible :name, :email, :login, :password

  validates :name, :email, :login, :password, :presence => true
  
  #Valida estrutura do e-mail, com mensagem de erro
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+.[A-Za-z]*\z/i, :message => " inválido!" 
  
  #Valida tamanho da senha, com mensagem de erro
  validates :password, :length => { :minimum => 6, :message => ": A senha deve ter no mínimo 6 caracteres!" }
  
  #Valida login e e-mails únicos, com mensagem de erro
  validates :email, :login, :uniqueness => {:case_sensitive => false, :message => " já existe. Tente outra vez!" }#true
  
    def authenticate password
    #user = find_by_username(username)
    if self && self.password == password
      self
    else
      nil
    end
  end

end
