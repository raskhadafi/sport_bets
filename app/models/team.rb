class Team
  include Mongoid::Document

  field :name,  type: String,  localize: true
  field :score, type: Integer, default: 0

  has_many :challenger, class_name: 'Match', inverse_of: :opponent_a
  has_many :contender,  class_name: 'Match', inverse_of: :opponent_b

  has_many :bet_first_place,  class_name: 'GroupBet', inverse_of: :first_place
  has_many :bet_second_place, class_name: 'GroupBet', inverse_of: :second_place

  def to_s
    name
  end
end