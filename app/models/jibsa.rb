class Jibsa < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :j_friendly_id, use: :slugged
end
