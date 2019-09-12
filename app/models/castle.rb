class Castle < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :siro
  # delegate :name, to: :castlename
  has_many :citadels
  has_one_attached :image

  # validates :name, :castlename ,presence: true
end
