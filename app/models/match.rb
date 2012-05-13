class Match
  include Mongoid::Document

  # Scores
  WinnerScore = 3
  TieScore    = 1
  LostScore   = 0

  field :score_a, type: Integer, default: 0
  field :score_b, type: Integer, default: 0
  field :goal_a,  type: Integer
  field :goal_b,  type: Integer
  field :kickoff, type: DateTime

  belongs_to :opponent_a,     class_name: 'Team', inverse_of: :challenger
  belongs_to :opponent_b,     class_name: 'Team', inverse_of: :contender
  belongs_to :place
  belongs_to :group

  has_one :first_next_match,  class_name: 'Group', inverse_of: :first_next_match
  has_one :second_next_match, class_name: 'Group', inverse_of: :second_next_match

  default_scope asc(:kickoff)

  validates_presence_of :goal_a, on: :update
  validates_presence_of :goal_b, on: :update

  def calculate_score
    if goal_a == goal_b
      self.score_a = TieScore
      self.score_b = TieScore
    elsif goal_a < goal_b
      self.score_a = LostScore
      self.score_b = WinnerScore
    elsif goal_a > goal_b
      self.score_a = WinnerScore
      self.score_b = LostScore
    end

    self.save
  end

  def result
    "#{opponent_a} #{score_a}:#{score_b} #{opponent_b}"
  end
end
