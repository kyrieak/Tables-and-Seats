class Team < ActiveRecord::Base
  has_many :retros
  has_many :memberships
  has_many :users, :through => :memberships
  attr_accessible
end
