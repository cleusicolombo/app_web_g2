class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :login, :enabled, :email, :password, :password_confirmation, :remember_me

  validates :name, :email, :login, :password, :presence => true
  validates_presence_of :name, :login
  #Valida estrutura do e-mail, com mensagem de erro
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]+.[A-Za-z]*\z/i, :message => " inválido. Tente outra vez!" 
  
  #Valida tamanho da senha, com mensagem de erro
  validates :password, :length => { :is => 6, :message => ": A senha deve ter 6 caracteres!" }
  
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
