class AddImportantToNotes < ActiveRecord::Migration
  def self.up
    add_column :notes, :important, :boolean
  end

  def self.down
    remove_column :notes, :important
  end
end
