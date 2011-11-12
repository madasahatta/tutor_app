class Student < ActiveRecord::Base

  has_many :notes, :dependent => :destroy
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true
  validates :email, :presence => true, :format => {:with => email_regex}
  
  

  
end
