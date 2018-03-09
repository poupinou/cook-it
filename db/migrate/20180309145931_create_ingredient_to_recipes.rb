class CreateIngredientToRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredient_to_recipes do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
