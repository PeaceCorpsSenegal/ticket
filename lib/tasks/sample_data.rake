namespace :db do
	task :populate => :environment do
		Rake::Task['db:reset'].invoke
		make_users
		make_codes
		make_priorities
		make_categories
	end
end

def make_users
	User.create!(:name => 'John Brown', :email => 'jack@brownjohnf.com', :password => 'testing', :password_confirmation => 'testing', :description => 'Senegal PCV', :admin => true, :phone => 773304831)
	User.create!(:name => 'Barack Obama', :email => 'barack@whitehouse.gov', :password => 'testing', :password_confirmation => 'testing', :description => 'US President', :admin => false, :phone => 78664839)
end

def make_codes
	Code.create!(:code => 'Open', :description => 'Ticket has been initialized. Awaiting confirmation of receipt.', :color => 'orange', :rank => 1, :sender => false, :receiver => false)
	Code.create!(:code => 'Closed', :description => "Ticket has been completed to all parties' satisfaction", :color => 'black', :rank => 50, :sender => true, :receiver => false)
	Code.create!(:code => 'Pending', :description => 'Ticket is being processed, and will be completed in a timely manner.', :color => 'orange', :rank => 10, :sender => true, :receiver => true)
	Code.create!(:code => 'Received', :description => 'Receipt of ticket acknowledged. Processing will begin shortly.', :color => 'blue', :rank => 5, :sender => false, :receiver => true)
	Code.create!(:code => 'Completed', :description => 'Ticket is believed to have been resolved.', :color => 'green', :rank => 40, :sender => false, :receiver => true)
	Code.create!(:code => 'Transferred', :description => 'Responsibility for this ticket has been passed to another user.', :color => 'gray', :rank => 55, :sender => true, :receiver => true)
end

def make_priorities
	Priority.create!(:level => 1, :priority => 'High', :description => 'Issue demands IMMEDIATE attention!')
	Priority.create!(:level => 5, :priority => 'Normal', :description => 'Standard priority.')
	Priority.create!(:level => 10, :priority => 'Low', :description => 'Issue is non-critical, or non-time-sensitive.')
end

def make_categories
	Category.create!(:category => 'Grant')
end
