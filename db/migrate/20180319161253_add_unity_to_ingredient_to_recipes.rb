class AddUnityToIngredientToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredient_to_recipes, :unity, :string
  end
end
