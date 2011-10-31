class Student < ActiveRecord::Base

  has_many :notes, :dependent => :destroy
  
end
