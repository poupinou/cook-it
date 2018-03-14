class CreateListIngs < ActiveRecord::Migration[5.1]
  def change
    create_table :list_ings do |t|
      t.references :user, foreign_key: true
      t.integer :ingredient_id
      t.integer :quantity

      t.timestamps
    end
  end
end
