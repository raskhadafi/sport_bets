class Group
  include Mongoid::Document

  field :name, type: String, localize: true

  has_many :matches
  accepts_nested_attributes_for :matches
end