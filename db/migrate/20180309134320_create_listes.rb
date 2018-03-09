class CreateListes < ActiveRecord::Migration[5.1]
  def change
    create_table :listes do |t|
      t.references :user, foreign_key: true
      t.integer :prix

      t.timestamps
    end
  end
end
