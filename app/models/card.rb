class Card < ApplicationRecord
  belongs_to :set_release, foreign_key: :set_id
end
