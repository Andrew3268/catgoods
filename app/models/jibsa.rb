class Jibsa < ApplicationRecord
  acts_as_punchable
  
  belongs_to :user
  has_and_belongs_to_many :tags

  extend FriendlyId
  friendly_id :j_friendly_id, use: :slugged

  after_create do
    jibsa = Jibsa.find_by(id: self.id)
    jhashtags = self.j_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    jhashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        jibsa.tags << tag
    end
  end
  
  before_update do
    jibsa = Jibsa.find_by(id: self.id)
    jibsa.tags.clear
    jhashtags = self.j_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    jhashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        jibsa.tags << tag
    end
  end
end
