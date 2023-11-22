class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.string :type
      t.string :amount
      t.belongs_to :i_and_e_statement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
