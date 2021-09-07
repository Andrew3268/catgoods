class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.integer :user_id
      t.string :name
      t.text :discription
      t.boolean :display_in_navbar, default: true

      t.timestamps
    end
  end
end
