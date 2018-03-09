class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :picture
      t.references :user, foreign_key: true
      t.text :body
      t.integer :time
      t.integer :price

      t.timestamps
    end
  end
end
