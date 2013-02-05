class Retro < ActiveRecord::Base
  has_many :remarks
  attr_accessible :date, :state, :voting_allowed
end
