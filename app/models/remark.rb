class Remark < ActiveRecord::Base
  belongs_to :retro
  has_one :connotation
  attr_accessible :explanation, :positive, :title
end
