# Attributes to serialize to JSON
class MoodSerializer < ActiveModel::Serializer
  attributes :id, :name
end