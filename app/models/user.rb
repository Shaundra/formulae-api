class User < ApplicationRecord
  has_many :formulas, -> { order 'created_at desc' }, as: :notable
  has_many :elements, through: :formulas
  has_many :tags
  has_many :notes, -> { order 'created_at desc' }
end
