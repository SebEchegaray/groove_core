class PastEvent < ApplicationRecord
  belongs_to :event

  has_many_attached :photos
  has_many_attached :videos
end
