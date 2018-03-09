class CreateRecettes < ActiveRecord::Migration[5.1]
  def change
    create_table :recettes do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.references :user, foreign_key: true
      t.text :body
      t.integer :temps
      t.integer :price

      t.timestamps
    end
  end
end
