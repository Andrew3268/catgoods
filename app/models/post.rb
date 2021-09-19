class Post < ApplicationRecord

  extend FriendlyId
  friendly_id :spare_01, use: :slugged

  belongs_to :user
  has_and_belongs_to_many :tags

  validates :is_price, presence: true

  after_create do
    post = Post.find_by(id: self.id)
    hashtags = self.hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        post.tags << tag
    end
  end
  
  before_update do
    post = Post.find_by(id: self.id)
    post.tags.clear
    hashtags = self.hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        post.tags << tag
    end
  end

  def self.search_by(search_term)
    where("LOWER(title) LIKE :search_term OR LOWER(key_word) LIKE :search_term", search_term: "%#{search_term.downcase}%")
  end 

  

end
