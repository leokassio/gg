class Team < ApplicationRecord

    # has_many :team_tournament_participations
    has_many :team_match_participations

    has_many :players
    has_many :matches, through: :team_match_participations, source: :match
    has_many :tournaments, through: :matches

end
