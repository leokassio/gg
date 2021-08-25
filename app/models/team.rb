class Team < ApplicationRecord

    has_many :players
    has_many :matches1, class_name: "Match", foreign_key: "team_1_id"
    has_many :matches2, class_name: "Match", foreign_key: "team_2_id"

    def matches
        matches1.concat(matches2)
    end

end
