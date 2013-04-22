# Attributes to serialize to JSON
class RetroSerializer < ActiveModel::Serializer
  attributes :id, :name
end

class RemarkSerializer < ActiveModel::Serializer
  attributes :id, :name
end
