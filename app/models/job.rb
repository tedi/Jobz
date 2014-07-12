class Job < ActiveRecord::Base
	belongs_to :recruiter
	has_many :locations
end
