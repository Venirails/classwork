class AddChangesToThreeTable < ActiveRecord::Migration
  def change
	  rename_column :emps,:name,:emp_name
	  remove_timestamps :students
	  add_column :books,:year,:integer
  end
end
