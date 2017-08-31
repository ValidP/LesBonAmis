class Expense < ApplicationRecord
    has_and_belongs_to_many :users	
	belongs_to :payeur, class_name: "User", foreign_key: "payeur_id"
	def amount
		montant
	end
	
	def amount= (a)
		self.montant = a 
	end
		
end
