class App_Home < ApplicationRecord
  include Clearance::User
  
  
  def self.BalanceDoivent (user)
	
	
	#Calcul du user	
	n = 0
	i = 0.00
	q = 0
	total = 0.00
	
	until n == user.expenses.count
		
		if (user.expenses[n].payeur == user)
		
			i += user.expenses[n].amount
			
			i = i /user.expenses[n].users.count
			
			
		end
		
		total += i 
		
		i = 0.00
		n += 1
	end
	
	return total
	
	
  end
  
  
  
    def self.BalanceTotal (user)
	
	
	#Calcul du user	
	n = 0
	i = 0.00
	q = 0
	total = 0.00
	
	until n == user.expenses.count
		
		
			i += user.expenses[n].amount
			i = i /user.expenses[n].users.count

		
			
			

		
		total += i 
		
		i = 0.00
		n += 1
	end
	
	return total
	
	
  end
  
  
  
  
  
end
