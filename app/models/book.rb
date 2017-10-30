class Book < ActiveRecord::Base
	before_save :merge_the_names
	
	
	def merge_the_names
		self.name = self.name + " by " +self.author
	end
end
