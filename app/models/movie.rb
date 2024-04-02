class Movie < ApplicationRecord
    enum status: { unlaunched: 0, launched: 1 }
    belongs_to :director
    belongs_to :gender
end
