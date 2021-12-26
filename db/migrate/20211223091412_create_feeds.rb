class CreateFeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :feeds do |t|
      t.integer :user_id
      t.string :f_title
      t.string :f_link
      t.string :f_image
      t.string :f_hashtag
      t.string :f_key_word
      t.string :f_friendly_id
      t.text :f_description

      t.string :f_spare_01
      t.string :f_spare_02
      t.string :f_spare_03
      t.string :f_spare_04
      t.string :f_spare_05
      t.string :f_spare_06
      t.string :f_spare_07
      t.string :f_spare_08
      t.string :f_spare_09
      t.string :f_spare_10
      
      t.text :f_spare_31
      t.text :f_spare_32
       
      t.float :f_spare_41
      t.float :f_spare_42
      t.float :f_spare_43
     
      t.integer :f_spare_56
      t.integer :f_spare_57
      t.integer :f_spare_58

      t.decimal :f_spare_61
      t.decimal :f_spare_62
      t.decimal :f_spare_63

      t.datetime :f_spare_66
      t.datetime :f_spare_67

      t.date :f_spare_71
      t.date :f_spare_72

      t.timestamps
    end
  end
end
