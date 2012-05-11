class Match
  include Mongoid::Document

  field :score_a, type: Integer
  field :score_b, type: Integer
  field :kickoff, type: DateTime

  has_one :opponent_a, class_name: Team
  has_one :opponent_b, class_name: Team
  has_one :place

  embedded_in :group
end
