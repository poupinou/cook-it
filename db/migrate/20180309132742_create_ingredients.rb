class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :type
      t.string :photo
      t.integer :prix

      t.timestamps
    end
  end
end
