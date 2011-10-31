class StudentsController < ApplicationController
  def new
	@title = 'Add Student'
	@student = Student.new
  end

  def create
	@student = Student.find(params[:id])
	
  end

end
