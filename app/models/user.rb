class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	 validates :email, length: { minimum: 6, message: "Should have min 6 chars"  }
	validates :email, uniqueness: true
	validates :mobile, numericality: true
	after_destroy :write_to_log
	
	def write_to_log
		logger.error "Alas!..........a user has been deleted"
	end
end
