class RenameTypeToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :incomes, :type, :name
    rename_column :expenditures, :type, :name
  end
end
