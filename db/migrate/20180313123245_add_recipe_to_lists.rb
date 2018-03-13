class AddRecipeToLists < ActiveRecord::Migration[5.1]
  def change
    add_reference :lists, :recipe, foreign_key: true
  end
end
