class AddIngredientToFridges < ActiveRecord::Migration[5.1]
  def change
    add_reference :fridges, :ingredient, foreign_key: true
  end
end
