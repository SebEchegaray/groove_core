class Event < ApplicationRecord
  has_many :media, as: :mediable
end
