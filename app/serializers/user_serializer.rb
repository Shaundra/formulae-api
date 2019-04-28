class UserSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :formulas
  has_many :tags
end
