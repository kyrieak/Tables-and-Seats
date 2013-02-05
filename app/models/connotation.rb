class Connotation < ActiveHash::Base
  include ActiveHash::Associations
  belongs_to :remark
  include ActiveHash::Enum
  self.data = [
    {:id => 1, :name => "Positive"},
    {:id => 2, :name => "Neutral"},
    {:id => 3, :name => "Negative"}
  ]
  enum_accessor :name
end
