class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
	    
	    t.string :name
	    t.integer :age 
	    t.integer :emp_no

      t.timestamps
    end
  end
end


