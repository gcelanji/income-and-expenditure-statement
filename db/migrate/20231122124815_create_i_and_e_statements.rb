class CreateIAndEStatements < ActiveRecord::Migration[7.0]
  def change
    create_table :i_and_e_statements do |t|
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
