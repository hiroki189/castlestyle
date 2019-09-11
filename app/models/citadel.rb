class Citadel < ApplicationRecord
  belongs_to :castle, optional: true
end
