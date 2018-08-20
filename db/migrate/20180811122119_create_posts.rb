class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :author_id
      t.string :time
      t.integer :in
<<<<<<< HEAD
=======

>>>>>>> e636cc649b376cafd046c86b26b63174c9c46611
      t.timestamps
    end
  end
end
