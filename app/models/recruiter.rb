class Recruiter < ActiveRecord::Base
	has_one :user
	has_many :jobs

	
end
