class Participant
  include Mongoid::Document
  field :first_name, type: String
  field :last_name,  type: String

  has_many :group_bets

  def name
    "#{first_name} #{last_name}"
  end
end
