class User < ApplicationRecord
  include Clearance::User
  
  has_and_belongs_to_many :expenses
  has_many :paid_expenses, class_name: "Expense", foreign_key: "payeur_id"
  
  
  
  
  
end
