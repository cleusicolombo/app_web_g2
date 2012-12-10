class UsersExchange < ActiveRecord::Base
  belongs_to :users
  belongs_to :books  
  attr_accessible :users_id_1, :users_id_2, :books_id_1, :books_id_2

  validates :users_id_1, :presence => true
  validates :users_id_2, :presence => true
  validates :books_id_1, :presence => true
  validates :books_id_2, :presence => true

  class UsersExchangeValidator < ActiveModel::Validator
    def validate(record)
      if record.books_id_1 == record.books_id_2
        record.errors[:books_id_1] << "Livro repetido. Tente novamente"
      end
      if record.users_id_1 == record.users_id_2
        record.errors[:users_id_1] << "Usuario repetido. Tente novamente"
      end
    end
  end

  validates_with UsersExchangeValidator
end

