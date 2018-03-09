class CreateRecettes < ActiveRecord::Migration[5.1]
  def change
    create_table :recettes do |t|
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
