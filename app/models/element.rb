class Element < ApplicationRecord
  belongs_to :formula
  has_many :notes, as: :notable
  has_many :element_tags
  has_many :tags, through: :element_tags
end
