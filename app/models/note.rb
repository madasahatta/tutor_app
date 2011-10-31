class Note < ActiveRecord::Base
  attr_accessible :note
  default_scope :order, 'notes.created_at DESC'
  validates :note, :presence => true, :length => {:maximum => 150}
  

	belongs_to :student
end
