class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :notable_type, :notable_id
end
