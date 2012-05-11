class Team
  include Mongoid::Document

  field :name,  type: String,  localize: true
  field :score, type: Integer, default: 0

  has_many :challenger, class_name: 'Match', inverse_of: :opponent_a
  has_many :contender,  class_name: 'Match', inverse_of: :opponent_b

  def to_s
    name
  end
end