class CreateFridges < ActiveRecord::Migration[5.1]
  def change
    create_table :fridges do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
