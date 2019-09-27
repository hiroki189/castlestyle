class Castle < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :content, presence: true
  validates :image, presence: true
  validates :siro_id, presence: true

  belongs_to_active_hash :siro
  has_many :citadels
  has_one_attached :image

end
