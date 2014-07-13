class JobsController < ApplicationController

	def index
		@jobs = Job.all
	end

	def new
		@recruiter = Recruiter.find(params[:recruiter_id])
		@job = Job.new
	end

	def create
		@recruiter = Recruiter.find(params[:recruiter_id])
		@job = @recruiter.jobs.create(job_params)
		if @job.save
			redirect_to recruiter_path(@recruiter)
		else
			render "new"
		end
	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:id])
		if @job.update(job_params)
			redirect_to jobs_path
		else
			render "edit"
		end
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
		redirect_to jobs_path
	end

	private

	def job_params
		params.require(:job).permit(:rec_id, :name, :description, :excerpt,
			:keywords, :salary, :company_id, :location_id, :status)
	end

end