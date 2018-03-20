class CreateTagusers < ActiveRecord::Migration[5.1]
  def change
    create_table :tagusers do |t|
      t.references :tag, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end