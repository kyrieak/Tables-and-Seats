class Retro < ActiveRecord::Base
  has_many :remarks
  belongs_to :team
  attr_accessible :date, :state, :voting_allowed

  validates :date, :presence => true
  validates :state, :presence => true
end
