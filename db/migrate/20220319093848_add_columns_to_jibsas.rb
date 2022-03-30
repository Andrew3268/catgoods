class AddColumnsToJibsas < ActiveRecord::Migration[6.1]
  def change
    add_column :jibsas, :j_option_01, :integer
    add_column :jibsas, :j_option_02, :integer
    add_column :jibsas, :j_option_03, :integer
    add_column :jibsas, :j_option_04, :integer
    add_column :jibsas, :j_option_05, :integer
    add_column :jibsas, :j_option_06, :integer
    add_column :jibsas, :j_option_07, :integer
    add_column :jibsas, :j_option_08, :integer
    add_column :jibsas, :j_option_09, :integer
    add_column :jibsas, :j_option_10, :integer
    add_column :jibsas, :j_option_11, :decimal
    add_column :jibsas, :j_option_12, :decimal
    add_column :jibsas, :j_option_13, :decimal
    add_column :jibsas, :j_option_14, :decimal
    add_column :jibsas, :j_option_15, :decimal
    add_column :jibsas, :j_option_16, :decimal
    add_column :jibsas, :j_option_17, :decimal
    add_column :jibsas, :j_option_18, :decimal
    add_column :jibsas, :j_option_19, :decimal
    add_column :jibsas, :j_option_20, :decimal
  end
end
