class Group
  include Mongoid::Document

  field :name,             type: String, localize: true
  field :round,            type: Integer
  field :next_match_field, type: String

  has_many :matches
  has_many :group_bets

  belongs_to  :next_match, class_name: 'Match'

  validates_presence_of :name
  validates_presence_of :round
end
