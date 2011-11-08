class AddStudentIdToNotes < ActiveRecord::Migration
  def self.up
    add_column :notes, :student_Id, :integer
  end

  def self.down
    remove_column :notes, :student_Id
  end
end
