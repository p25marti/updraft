class Card < ApplicationRecord
  validates :scryfall_id, uniqueness: true
end
