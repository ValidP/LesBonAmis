class Expenses_users < ApplicationRecord

    create_table :expense_user, id: false do |t|
      t.belongs_to :expense, index: true
      t.belongs_to :user, index: true
    end



end
