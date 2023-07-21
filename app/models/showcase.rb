class Showcase < ApplicationRecord
  has_many :media, as: :mediable
end
