class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :notable_type, :notable_id, :seek_to_time

  belongs_to :user
end
