class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
<<<<<<< HEAD
      t.integer :author_id
      t.string :time
      t.integer :in
=======

>>>>>>> 79b045965f4a46a12f68590486cada6cd33bb5ea
      t.timestamps
    end
  end
end
