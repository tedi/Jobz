class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    session[:linkedin_data] = request.env["omniauth.auth"]["info"]
    if !User.find_by_email(request.env["omniauth.auth"]["info"]['email']) 
      
      User.create(email: session[:linkedin_data]['email'], first_name: session[:linkedin_data]['first_name'], last_name: session[:linkedin_data]['last_name'], image: session[:linkedin_data]['image']) 
    end
    	redirect_to users_role_path
  end


end