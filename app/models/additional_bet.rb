class AdditionalBet
  include Mongoid::Document

  has_and_belongs_to_many :users
  belongs_to :group

  field :question, type: String
  field :score,    type: Integer
  field :points,   type: Integer
end
