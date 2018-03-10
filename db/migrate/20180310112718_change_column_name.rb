class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :ingredients, :type, :family
  end
end
