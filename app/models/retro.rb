# This is the reason we are here
class Retro < ActiveRecord::Base
  attr_accessible :date, :voting_allowed, :name, :team_id

  has_many :remarks, :dependent => :destroy
  belongs_to :team

  validates :date, :presence => true
  validates :name, :presence => true

  def connotations
    Connotation.all
  end

end
