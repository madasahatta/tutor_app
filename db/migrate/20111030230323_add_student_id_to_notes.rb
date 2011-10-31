class AddStudentIdToNotes < ActiveRecord::Migration
  def self.up
    add_column :notes, :Student_Id, :integer
  end

  def self.down
    remove_column :notes, :Student_Id
  end
end
