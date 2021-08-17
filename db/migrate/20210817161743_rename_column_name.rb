class RenameColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :employees, :first_name, :name
  end
end
