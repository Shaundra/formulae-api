class FormulaSerializer < ActiveModel::Serializer
  attributes :id, :title, :is_public

  belongs_to :user
  has_many :elements
  has_many :notes

end
