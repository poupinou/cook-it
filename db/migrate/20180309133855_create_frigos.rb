class CreateFrigos < ActiveRecord::Migration[5.1]
  def change
    create_table :frigos do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
