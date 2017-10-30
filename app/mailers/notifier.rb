class Notifier < ActionMailer::Base
  default from: "indo@myapp.com"
  
  def alert_admin(bank_detail)
	  @name = bank_detail.name
	  @branch = bank_detail.branch
	  @address = bank_detail.address
	  #attachments['filename.jpg'] = File.read('/path/to/filename.jpg')

	  mail(to: "veni.rails@gmail.com",subject: "ALERT - A new bank entry has been added!")

  end 
  
  
end
