class NotesController < ApplicationController
  def new
	@note = Note.new
	@students = Student.find(:all)
	@notes = Note.find_all_by_important(true)
  end

  def create
	@note = Note.new(params[:note])
	if @note.save
	
		flash[:note_added] = 'Note has been added'
		redirect_to root_path
	else
		@title = 'Add Note'
		render 'new'
	end
  end
  def destroy
	Note.find(params[:id]).destroy
	flash[:Success] = "Note deleted"
	redirect_to root_path
  end
end
