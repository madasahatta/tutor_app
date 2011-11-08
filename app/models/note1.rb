class Note < ActiveRecord::Base
  
  
  validates :note, :presence => true, :length => {:maximum => 150}
  

	belongs_to :student
end
