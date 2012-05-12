class Group
  include Mongoid::Document

  field :name,  type: String, localize: true
  field :round, type: Integer

  has_many :matches
  has_many :group_bets
end