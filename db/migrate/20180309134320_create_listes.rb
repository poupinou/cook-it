class CreateListes < ActiveRecord::Migration[5.1]
  def change
    create_table :listes do |t|
      t.references :user, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
