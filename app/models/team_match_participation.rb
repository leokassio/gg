class TeamMatchParticipation < ApplicationRecord

    belongs_to :team
    belongs_to :match

end
