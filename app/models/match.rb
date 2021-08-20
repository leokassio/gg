class Match < ApplicationRecord
  belongs_to :tournament, foreign_key: true
  belongs_to :team_1, foreign_key: true
  belongs_to :team_2, foreign_key: true
end
