class StudentsController < ApplicationController

  def index
	@title = 'List of Students' 
	@students = Student.paginate(:page => params[:page])
  end

  def new
	@title = 'Add Student'
	@student = Student.new
  end

  def create
	@student = Student.new(params[:student])
	if @student.save
		flash[:success] = 'Student saved'
		redirect_to root_path
	else
		@title = 'Add Student'
		render 'new'
	end
  end
  
  def show
	@title = 'Student Profile' 
	@student = Student.find(params[:id])
	@notes = @student.notes.all
  end
  

end
