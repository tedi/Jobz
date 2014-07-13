class JobSeekersController < ApplicationController

	def show
		@job_seeker = JobSeeker.find(params[:id])
	end 
end