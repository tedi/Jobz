class Job < ActiveRecord::Base
	belongs_to :recruiter
	has_many :locations

	def self.get_random_job(seeker_id)
		@all_jobs = Job.all
		
		@user_jobs = []

		@all_connections = Connection.where(seeker_id: seeker_id)

		@all_jobs.each do |job|
			if job_is_unique(job, @all_connections, seeker_id)
				@user_jobs << job
			end
		end

		return @user_jobs.sample
	end

	def self.job_is_unique(job, connections, seeker_id)
		connections_array = connections.select {|item| item[:job_id].to_i == job.id && item[:seeker_id].to_i == seeker_id.to_i }
		return true if connections_array.size < 1
	end

end
