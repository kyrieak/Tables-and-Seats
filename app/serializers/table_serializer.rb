# Attributes to serialize to JSON
class TableSerializer < ActiveModel::Serializer
  attributes :id, :party, :seats
end