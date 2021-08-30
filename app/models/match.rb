class Match < ApplicationRecord

  has_many :team_match_participations

  has_many :teams, through: :team_match_participations
  belongs_to :tournament

end


# CRIAR UM player_match_participation onde guarda a id do player, do match e do time