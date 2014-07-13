class RecruitersController < ApplicationController

	def show
		@recruiter = Recruiter.find(params[:id])
	end

end