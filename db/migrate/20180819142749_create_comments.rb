class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
