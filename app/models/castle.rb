class Castle < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :siro
  has_many :citadels
  has_one_attached :image

end
