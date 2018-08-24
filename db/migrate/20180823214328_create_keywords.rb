class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :keyword
      t.integer :number
      t.timestamps
    end
  end
end
