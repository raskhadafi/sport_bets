class GroupBet
  include Mongoid::Document

  belongs_to :user
  belongs_to :group
  belongs_to :first_place,  class_name: 'Team', inverse_of: :bet_first_place
  belongs_to :second_place, class_name: 'Team', inverse_of: :bet_second_place

  validates_presence_of :first_place
  validates_presence_of :second_place
  validates_presence_of :group

  def score
    return 0 unless group.finished?

    score = 0
    score += Points::GroupBetWin if group.teams[0].eql?(first_place)
    score += Points::GroupBetWin if group.teams[1].eql?(second_place)

    score
  end
end
