class Remark < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :retros
  belongs_to_active_hash :connotation
  validates_presence_of :connotation, :title
  attr_accessible :explanation, :title, :connotation_id, :retro_id
end
