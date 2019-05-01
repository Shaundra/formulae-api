class User < ApplicationRecord
  has_many :formulas, -> { order 'created_at desc' }
  has_many :elements, through: :formulas
  has_many :tags
  has_many :notes, -> { order 'created_at desc' }

  has_secure_password
  validates :name, uniqueness: {case_sensitive: false}
end
