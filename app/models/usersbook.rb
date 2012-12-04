class Usersbook < ActiveRecord::Base

  attr_accessible :user_id, :book_id, value:

  belongs_to :disciplina
  belongs_to :professor
  has_many :notas
  has_many :alunos, :through => :notas

  validates_presence_of :disciplina
  validates_presence_of :professor

  validates :codigo, :creditos, :semestre, :presence => true

end
