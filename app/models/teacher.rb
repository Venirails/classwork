class Teacher < ActiveRecord::Base
	before_save :merge_names
	after_destroy :send_message_to_log
	
	def merge_names
		self.first_name = self.first_name + " " + self.last_name
	end
	
	def send_message_to_log
		logger.error "Alas..A teacher record has been deleted with the name #{self.id}"
	end
	
end
