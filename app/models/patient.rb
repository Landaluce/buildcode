class Patient < ApplicationRecord
	validates :name, :birth_date, :cpf, :presence => true
	validates :cpf, length: { is: 11 }, uniqueness: true
end