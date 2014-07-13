class JobSeekersController < ApplicationController

	def show
		@job_seeker = JobSeeker.find(params[:id])
		@job = Job.get_random_job(params[:id])
		@job_location = Location.find(@job.location_id)
		@job_recruiter = Recruiter.find(@job.rec_id)
	end 
end