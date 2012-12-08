class User < ActiveRecord::Base
  attr_accessible :name, :email, :login, :password

  validates :name, :email, :login, :password, :presence => true
  validates :email, :login, :uniqueness => {:case_sensitive => false}#true
  #validates :login, :case_sensitive => true
  
    def authenticate password
    #user = find_by_username(username)
    if self && self.password == password
      self
    else
      nil
    end
  end

end
