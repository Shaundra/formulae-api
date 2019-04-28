class ElementSerializer < ActiveModel::Serializer
  attributes :id, :title, :position, :is_public, :source_url, :location_path, :content_type, :content
end
