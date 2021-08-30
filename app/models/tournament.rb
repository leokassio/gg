class Tournament < ApplicationRecord

    has_many :matches, inverse_of: :tournament
    has_many :teams, -> { distinct }, through: :matches, source: :teams

end
