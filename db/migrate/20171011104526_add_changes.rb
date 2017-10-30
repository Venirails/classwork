class AddChanges < ActiveRecord::Migration
  def change
	  add_column :users,:age,:integer
	  remove_timestamps :books
	  rename_column :students,:roll_no,:roll_number
  end
end
