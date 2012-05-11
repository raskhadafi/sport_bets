class Group
  include Mongoid::Document

  field :name, type: String, localize: true

  embeds_many :matches
end