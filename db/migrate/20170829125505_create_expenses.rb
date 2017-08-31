class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.decimal :montant
      t.string :title

      t.timestamps
    end
  end
end
