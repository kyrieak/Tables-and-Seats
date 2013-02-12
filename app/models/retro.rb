class Retro < ActiveRecord::Base
  has_many :remarks
  belongs_to :team
  attr_accessible :date, :state, :voting_allowed, :name, :team_id

  validates :date, :presence => true
end
