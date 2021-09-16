class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.references :category, null: false, foreign_key: true
      t.string :title
      t.string :link
      t.string :image
      t.string :source
      t.string :hashtag
      t.string :rating
      t.string :review_count
      t.string :key_word
      t.string :star_5
      t.string :star_4_5
      t.string :star_4
      t.string :star_3_5
      t.string :star_3
      t.decimal :is_price
      t.decimal :was_price
      t.decimal :pct
      t.text :description

      t.string :spare_01
      t.string :spare_02
      t.string :spare_03
      t.string :spare_04
      t.string :spare_05
      t.string :spare_06
      t.string :spare_07
      t.string :spare_08
      t.string :spare_09
      t.string :spare_10
      t.string :spare_11
      t.string :spare_12
      t.string :spare_13
      t.string :spare_14
      t.string :spare_15
    
      t.text :spare_31
      t.text :spare_32
       
      t.float :spare_41
      t.float :spare_42
      t.float :spare_43
      t.float :spare_44
      t.float :spare_45
     
      t.integer :spare_56
      t.integer :spare_57
      t.integer :spare_58
      t.integer :spare_59
      t.integer :spare_60

      t.decimal :spare_61
      t.decimal :spare_62
      t.decimal :spare_63
      t.decimal :spare_64
      t.decimal :spare_65

      t.datetime :spare_66
      t.datetime :spare_67
      t.datetime :spare_68

      t.date :spare_71
      t.date :spare_72
      t.date :spare_73

      t.timestamps
    end
  end
end
