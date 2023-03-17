class SetRelease < ApplicationRecord
  self.primary_key = :id

  has_many :cards, foreign_key: :set_id
end
