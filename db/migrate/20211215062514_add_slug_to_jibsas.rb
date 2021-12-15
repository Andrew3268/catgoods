class AddSlugToJibsas < ActiveRecord::Migration[6.1]
  def change
    add_column :jibsas, :slug, :string
    add_index :jibsas, :slug, unique: true
  end
end
