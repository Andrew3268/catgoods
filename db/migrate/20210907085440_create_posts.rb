class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
