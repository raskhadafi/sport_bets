class Team
  include Mongoid::Document

  field :name,  type: String,  localize: true
  field :score, type: Integer, default: 0

  has_many :matches
end