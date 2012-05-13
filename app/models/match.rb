class Match
  include Mongoid::Document

  field :score_a, type: Integer
  field :score_b, type: Integer
  field :kickoff, type: DateTime

  belongs_to :opponent_a,     class_name: 'Team', inverse_of: :challenger
  belongs_to :opponent_b,     class_name: 'Team', inverse_of: :contender
  belongs_to :place
  belongs_to :group

  default_scope asc(:kickoff)

  validates_presence_of :score_a, :if => :persisted?
  validates_presence_of :score_b, :if => :persisted?

  def result
    "#{opponent_a} #{score_a}:#{score_b} #{opponent_b}"
  end

  after_update :setup_next_round

  def setup_next_round
    opponent_a.score += score_a
    opponent_b.score += score_b
  end
end
