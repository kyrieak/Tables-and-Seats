# Attributes to serialize to JSON
class RemarkSerializer < ActiveModel::Serializer
  attributes :id, :content
end

