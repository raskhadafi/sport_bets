class Group
  include Mongoid::Document

  field :name,                    type: String, localize: true
  field :round,                   type: Integer
  field :first_next_match_field,  type: String
  field :second_next_match_field, type: String
  field :finished,                type: Boolean, default: false

  has_many :matches
  has_many :group_bets

  belongs_to :first_next_match,  class_name: 'Match', inverse_of: :first_next_match
  belongs_to :second_next_match, class_name: 'Match', inverse_of: :second_next_match

  validates_presence_of :name
  validates_presence_of :round

  attr :transfer_teams

  def close
    case round
    when 1
      transfer2second_round
    else
      matches2next_round
    end
  end

  def matches2next_round
    matches.each do |match|
      winner_team = match.winner_team

      if winner_team
        transfer = match.next_match
        transfer.send("#{match.next_position}=", winner_team)
        transfer.save!(validate: false)
        @transfer_teams << winner_team
      end
    end
  end

  def transfer2second_round
    first_next_match.send("#{first_next_match_field}_id=", teams[0].id)
    first_next_match.save!(validate: false)
    second_next_match.send("#{second_next_match_field}_id=", teams[1].id)
    second_next_match.save!(validate: false)
    update_attribute(:finished, true)
    @transfer_teams << teams[0]
    @transfer_teams << teams[1]
  end

  def running?
    !finished
  end

  def to_s
    name
  end

  def teams
    @teams ||= matches.includes(:opponent_a).map { |e| e.opponent_a  }.uniq.sort_by(&:score).reverse
  end
end
