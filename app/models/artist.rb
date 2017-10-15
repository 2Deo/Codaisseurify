class Artist < ApplicationRecord
  has_many :songs
  has_many :photos, dependent: :destroy
end
