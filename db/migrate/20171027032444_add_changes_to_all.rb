class AddChangesToAll < ActiveRecord::Migration
  def change
	  add_column :banks,:ifsc,:string
	  remove_timestamps :companies
	  rename_column :teachers,:clstd,:standard	  
  end
end
