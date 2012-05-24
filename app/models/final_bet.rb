class FinalBet
  include Mongoid::Document

  field :score_first,  type: Integer
  field :score_second, type: Integer

  belongs_to :user

  has_one :team_first,  class_name: 'Team'
  has_one :team_second, class_name: 'Team'
end
