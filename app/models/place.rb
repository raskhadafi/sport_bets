class Place
  include Mongoid::Document

  field :name, type: String, localize: true
end