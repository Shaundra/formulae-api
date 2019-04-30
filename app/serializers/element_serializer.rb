class ElementSerializer < ActiveModel::Serializer
  attributes :id, :title, :position, :is_public, :source_url, :location_path, :content_type, :content

  belongs_to :formula
  has_many :notes
  has_many :tags

end
