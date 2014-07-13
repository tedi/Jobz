class UsersController < ApplicationController

	def role
		@user = User.find_by_email(session[:linkedin_data]['email'])
		@profile_image = @user.image
		puts "==============================================================="
		p @user
		puts session[:linkedin_data]['last_name']
		puts session[:linkedin_data]['image']
		if !@user.job_seeker_id.nil?
			redirect_to job_seeker_path @user.job_seeker_id
		elsif !@user.recruiter_id.nil?
			redirect_to recruiter_path @user.recruiter_id
		end

	end

	def create_job_seeker
		jobseeker = JobSeeker.create(objective: session[:linkedin_data]['description'], current_pos: session[:linkedin_data]['headline'])
		User.find_by_email(session[:linkedin_data]['email']).update(job_seeker_id: jobseeker.id)
	end

	def new_recruiter
		@recruiter = Recruiter.new if request.get?
		if request.post?
			@recruiter = Recruiter.create(company: params[:recruiter][:company])
			User.find_by_email(session[:linkedin_data]['email']).update(recruiter_id: @recruiter.id)
		end
	end


end