class HalfFinalBet
  include Mongoid::Document

  belongs_to :user
  belongs_to :group
end
