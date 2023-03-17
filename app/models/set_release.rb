class SetRelease < ApplicationRecord
  validates :release_id, uniqueness: true
end
