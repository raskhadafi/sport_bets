class Match
  include Mongoid::Document

  field :score_a, type: Integer
  field :score_b, type: Integer
  field :kickoff, type: DateTime

  belongs_to :opponent_a, class_name: 'Team', inverse_of: :challenger
  belongs_to :opponent_b, class_name: 'Team', inverse_of: :contender
  belongs_to :place
  belongs_to :group

  default_scope asc(:kickoff)
end
