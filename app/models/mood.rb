class Mood < ActiveRecord::Base
  attr_accessible :name
  has_many :seats
end
