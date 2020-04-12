class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :post
      t.integer :user_id
      t.boolean :is_removed

      t.timestamps
    end
  end
end
