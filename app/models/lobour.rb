class Lobour < ActiveRecord::Base
	validates :name, presence: true,length: { minimum: 2 , message: "should have min 2 chars" }
	validates :age , :presence => {message: "Age should be there"}
	validates :emp_no, presence: true, uniqueness: true
        validates :age, numericality: true

end
