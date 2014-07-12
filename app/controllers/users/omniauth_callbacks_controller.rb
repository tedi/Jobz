class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    response = request.env["omniauth.auth"]["info"]
    
    @user = User.find_by_email(response['email']) 
    if @user
    	#redirect to their homepage
    else
   		create_job_seeker
    end
end

private

def create_job_seeker
	response = request.env["omniauth.auth"]["info"]
	@job_seeker = JobSeeker.create(objective: response['description'], current_pos: response['headline'])
	@user = User.create(email: response['email'],first_name: response['first_name'],last_name: response['last_name'], job_seeker_id: @job_seeker.id)	
end


end