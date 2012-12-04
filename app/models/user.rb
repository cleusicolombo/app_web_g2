class User < ActiveRecord::Base

  attr_accessible :nome, :email, :login, :senha

  validates :nome, :email, :login, :senha, :presence => true
  validates :nome, :email, :login, :uniqueness => true

end
