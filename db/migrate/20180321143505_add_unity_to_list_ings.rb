class AddUnityToListIngs < ActiveRecord::Migration[5.1]
  def change
    add_column :list_ings, :unity, :string
  end
end
