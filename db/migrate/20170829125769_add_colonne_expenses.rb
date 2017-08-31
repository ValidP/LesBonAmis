class AddColonneExpenses < ActiveRecord::Migration[5.1]
  def change

		add_column(:expenses, :payeur_id, :integer, options = {}) 

	
  end
end
