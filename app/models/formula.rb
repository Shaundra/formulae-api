class Formula < ApplicationRecord
  belongs_to :user
  has_many :elements
  has_many :notes, -> { order 'created_at desc' }, as: :notable
  has_many :formula_tags
  has_many :tags, through: :formula_tags
end
