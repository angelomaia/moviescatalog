class Movie < ApplicationRecord
    enum status: { unlaunched: 0, launched: 1 }
    has_one_attached :poster
    belongs_to :director
    belongs_to :gender
end
