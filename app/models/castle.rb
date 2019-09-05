class Castle < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :castlename
  has_one_attached :image
  has_many :citadel
end
