class GroupBet
  include Mongoid::Document

  belongs_to :participant
  belongs_to :group
  belongs_to :first_place,  class_name: 'Team', inverse_of: :bet_first_place
  belongs_to :second_place, class_name: 'Team', inverse_of: :bet_second_place
end
