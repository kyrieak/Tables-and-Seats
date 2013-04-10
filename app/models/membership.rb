# Users belong to teams through memberships
class Membership <  ActiveRecord::Base
  attr_accessible :user_id, :team_id
  belongs_to :user
  belongs_to :team
  validates :user_id, :uniqueness => { :scope => :team_id }
end
