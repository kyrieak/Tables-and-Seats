class Seat < ActiveRecord::Base
  attr_accessible :mood_id, :occupant, :table_id
  belongs_to :mood
  belongs_to :table
end
