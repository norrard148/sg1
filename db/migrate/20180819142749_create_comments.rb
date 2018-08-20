class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
<<<<<<< HEAD
      t.integer :author_id
=======
>>>>>>> 79b045965f4a46a12f68590486cada6cd33bb5ea
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
