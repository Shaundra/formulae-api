class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :formulas#, include_nested_associations: true
  # has_many :elements, through: :formulas
  has_many :tags
end
