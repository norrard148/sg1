class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :author_id
      t.string :time
      t.integer :in
<<<<<<< HEAD
      t.integer :like
      t.string :likeauthor_id
      t.string :hashtag
=======
>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
      t.timestamps
    end
  end
end
