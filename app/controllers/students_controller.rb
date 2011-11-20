class StudentsController < ApplicationController

  def index
	@title = 'List of Students' 
	@students = Student.paginate(:page => params[:page])
  end

  def new
	@title = 'Add Student'
	@student = Student.new
  end
  
  def edit
	@title = 'Edit Student'
	@student = Student.find(params[:id])
  end
  
  def update
	@student = Student.find(params[:id])
	if @student.update_attributes(params[:student])
		flash[:success] = "Student updated"
		redirect_to root_path
	else
		@title = 'Edit User'
		render 'edit'
	end
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
