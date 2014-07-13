class JobSeekersController < ApplicationController
	def show
		@job_seeker = JobSeeker.find(params[:id])
		@job = Job.get_random_job(params[:id])
		if @job
			@job_location = Location.find(@job.location_id)
			@job_recruiter = Recruiter.find(@job.rec_id)
		end
	end 

	def apply
		@job = Job.find(params[:job_id])

		@new_connection = Connection.create(seeker_id: params[:seeker_id], 
											job_id: @job.id, 
											recruiter_id: @job.rec_id,
											status_id: 3 )
		redirect_to job_seeker_path params[:seeker_id]
	end

	def pass
		@job = Job.find(params[:job_id])

		@new_connection = Connection.create(seeker_id: params[:seeker_id], 
											job_id: @job.id, 
											recruiter_id: @job.rec_id,
											status_id: 4 )
		redirect_to job_seeker_path params[:seeker_id]
	end


end