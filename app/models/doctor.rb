class Doctor < ApplicationRecord
	states = ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA",
			  "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "PJ", "RN",
			  "RS", "RO", "RR", "SC", "SP", "SE", "TO"]
	
	validates :name, :crm, :crm_uf, :presence => true
	validates :crm_uf, :inclusion => {:in => states, message: "%{value} is not a valid state. valid states: AC, AL, AP, AM, BA, CE, DF, ES, GO, MA, MT, MS, MG, PA, PB, PR, PE, PI, PJ, RN, RS, RO, RR, SC, SP, SE, TO"}
	validates :crm_uf, uniqueness: {scope: :crm}
	#validates :crm, uniqueness: {scope: :crm_uf}
	before_save :uppercase_crm_uf

	def uppercase_crm_uf
		crm_uf.upcase!
	end
end
