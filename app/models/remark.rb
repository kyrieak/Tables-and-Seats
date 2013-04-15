# A remark is a comment about how the project went
class Remark < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions

  attr_accessible :content, :connotation_id, :retro_id

  belongs_to :retros
  belongs_to_active_hash :connotation

  validates_presence_of :connotation, :content
end
