class UsersExchange < ActiveRecord::Base
  belongs_to :users
  belongs_to :books  
  attr_accessible :users_id_1, :users_id_2, :books_id_1, :books_id_2

  validates_presence_of :users_id_1, :users_id_2,
   :unless => UsersExchange.new {:users_id_1 == :users_id_2}, :message => " foi repetido. Tente novamente!"
  #, :unless => UsersExchange.new(self, :users_id_1) == UsersExchange.new(self, :users_id_2), :message => " foi repetido. Tente novamente!"
  
  validates_presence_of :books_id_1, :books_id_2,
   :unless => UsersExchange.new {:books_id_1 == :books_id_2}, :message => " foi repetido. Tente novamente!"
  #, :unless => UsersExchange.new(self, :books_id_1) == UsersExchange.new(self, :books_id_2), :message => " foi repetido. Tente novamente!"
  #@users_exchange = UsersExchange.new(:name => params[:users_exchange])
  # Valida combinação única de troca de livro
  #validates :books_id_1, :books_id_2, :unless => :books_id_1 == :books_id_2
  #validates :users_id_1, :users_id_2, :unless => :users_id_1 == :users_id_2
  
end
