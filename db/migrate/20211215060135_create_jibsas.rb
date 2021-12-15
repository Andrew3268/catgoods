class CreateJibsas < ActiveRecord::Migration[6.1]
  def change
    create_table :jibsas do |t|
      t.integer :user_id
      t.string :j_title
      t.string :j_link
      t.string :j_image
      t.string :j_source
      t.string :j_hashtag
      t.string :j_rating
      t.string :j_review_count
      t.string :j_key_word
      t.string :j_friendly_id
      t.decimal :j_is_price
      t.decimal :j_was_price
      t.decimal :j_pct
      t.text :j_description

      t.string :j_spare_01
      t.string :j_spare_02
      t.string :j_spare_03
      t.string :j_spare_04
      t.string :j_spare_05
      t.string :j_spare_06
      t.string :j_spare_07
      t.string :j_spare_08
      t.string :j_spare_09
      t.string :j_spare_10
      
      t.text :j_spare_31
      t.text :j_spare_32
       
      t.float :j_spare_41
      t.float :j_spare_42
      t.float :j_spare_43
     
      t.integer :j_spare_56
      t.integer :j_spare_57
      t.integer :j_spare_58

      t.decimal :j_spare_61
      t.decimal :j_spare_62
      t.decimal :j_spare_63

      t.datetime :j_spare_66
      t.datetime :j_spare_67

      t.date :j_spare_71
      t.date :j_spare_72

      t.timestamps
    end
  end
end
