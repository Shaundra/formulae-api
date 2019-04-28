class Tag < ApplicationRecord
  belongs_to :user
  has_many :formula_tags
  has_many :element_tags

  validates :name, uniqueness: { case_sensitive: false }
end
