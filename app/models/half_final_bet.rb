class HalfFinalBet
  include Mongoid::Document

  field :score_game_one_team_a, type: Integer
  field :score_game_one_team_b, type: Integer
  field :score_game_two_team_a, type: Integer
  field :score_game_two_team_b, type: Integer
  field :score,                 type: Integer, default: 0

  belongs_to :user

  belongs_to :game_one_team_a, class_name: 'Team'
  belongs_to :game_one_team_b, class_name: 'Team'
  belongs_to :game_two_team_a, class_name: 'Team'
  belongs_to :game_two_team_b, class_name: 'Team'

  validates_presence_of :score_game_one_team_a,
                        :score_game_one_team_b,
                        :score_game_two_team_a,
                        :score_game_two_team_b,
                        :game_one_team_a,
                        :game_one_team_b,
                        :game_two_team_a,
                        :game_two_team_b,
                        :user
end
