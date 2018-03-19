class CreateIngredientusers < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredientusers do |t|
      t.references :ingredient, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
