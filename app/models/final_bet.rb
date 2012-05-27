class FinalBet
  include Mongoid::Document

  field :score_first,  type: Integer
  field :score_second, type: Integer
  field :score,        type: Integer, default: 0

  belongs_to :user

  belongs_to :team_first,  class_name: 'Team'
  belongs_to :team_second, class_name: 'Team'
end
