class CreateTagrecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :tagrecipes do |t|
      t.references :tag, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
