class AddRightsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rights, :integer
  end
end
