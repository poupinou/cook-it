class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :corps
      t.string :source

      t.timestamps
    end
  end
end
