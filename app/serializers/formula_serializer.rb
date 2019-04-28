class FormulaSerializer < ActiveModel::Serializer
  attributes :id, :title, :is_public

  has_many :elements
end
