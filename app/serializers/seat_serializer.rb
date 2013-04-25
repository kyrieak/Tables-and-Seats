# Attributes to serialize to JSON
class SeatSerializer < ActiveModel::Serializer
  attributes :id, :table_id, :mood_id, :occupant
end

