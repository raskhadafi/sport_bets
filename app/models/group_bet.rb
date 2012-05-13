class GroupBet
  include Mongoid::Document

  belongs_to :participant
  belongs_to :group
  belongs_to :first_place,  class_name: 'Team', inverse_of: :bet_first_place
  belongs_to :second_place, class_name: 'Team', inverse_of: :bet_second_place

  validates_presence_of :first_place
  validates_presence_of :second_place
  validates_presence_of :group
  validates_presence_of :participant

  def name
    "#{participant.first_name} #{participant.last_name}" if participant
  end
end
