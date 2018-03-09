class AddPriceToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :price, :integer
  end
end
