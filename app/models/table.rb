class Table < ActiveRecord::Base
  attr_accessible :party
  has_many :seats
end
